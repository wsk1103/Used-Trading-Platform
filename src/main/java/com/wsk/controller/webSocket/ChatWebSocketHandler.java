package com.wsk.controller.webSocket;

import com.wsk.tool.SaveSession;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.*;

/**
 * Created by wsk1103 on 2017/5/22.
 */
public class ChatWebSocketHandler extends TextWebSocketHandler {

    private final static List<WebSocketSession> sessions = Collections.synchronizedList(new ArrayList<WebSocketSession>());

    //接收文本消息，并发送出去
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) {
        System.out.println(session.getId()+":send....");
//        chatTextMessageHandler(message.getPayload());
        try {
//            super.handleTextMessage(session, message);
            System.out.println(session.getId()+" :"+message.getPayload() + "   " + new Date());
            String m = message.getPayload();
            if (m.equals("start")){
                session.sendMessage(new TextMessage("success"));
                return;
            }
            boolean b = SaveSession.getInstance().isHave(m);
            if (b) {
                if (session.isOpen()) {
                    session.sendMessage(new TextMessage("error"));
                }
            } else {
                if (session.isOpen())
                    session.sendMessage(new TextMessage("success"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //连接建立后处理
    @SuppressWarnings("unchecked")
    @Override
    public void afterConnectionEstablished(WebSocketSession session) {
        System.out.println(session.getId()+":start.....");
        sessions.add(session);
        //处理离线消息
    }

    //抛出异常时处理
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        System.out.println(session.getId()+":start error");
        if (session.isOpen()) {
            session.close();
        }
        sessions.remove(session);
    }

    //连接关闭后处理
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus closeStatus) {
        System.out.println(session.getId()+":close......");
        sessions.remove(session);
    }

}