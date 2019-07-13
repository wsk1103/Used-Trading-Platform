package com.wsk.controller;

import com.wsk.pojo.UserInformation;
import com.wsk.response.BaseResponse;
import com.wsk.service.UserInformationService;
import com.wsk.tool.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

/**
 * Created by wsk1103 on 2017/4/30.
 */
@Controller
public class SendEmailController {

    @Resource
    private UserInformationService userInformationService;
    private static final Logger log = LoggerFactory.getLogger(SendEmailController.class);

    //send the Email to the phone
    @RequestMapping(value = "sendCode.do", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public BaseResponse sendEmail(HttpServletRequest req, HttpServletResponse res,
                                  @RequestParam String phone, @RequestParam String action,
                                  @RequestParam String token) {
        res.setContentType("text/html;charset=UTF-8");
        //token，防止重复提交
        String sendCodeToken = (String) req.getSession().getAttribute("token");
        if (StringUtils.getInstance().isNullOrEmpty(sendCodeToken) || !sendCodeToken.equals(token)) {
            return BaseResponse.fail();
        }
        //判断手机号码是否为正确
        if (!StringUtils.getInstance().isPhone(phone)) {
            return BaseResponse.fail();
        }
        //如果是忘记密码提交的发送短信
        if ("forget".equals(action)) {
            if (!isUserPhoneExists(phone)) {
                //失败
                return BaseResponse.fail();
            }
        } else if ("register".equals(action)) {
            //失败
            if (isUserPhoneExists(phone)) {
                return BaseResponse.fail();
            }
        }
        //get the random num to phone which should check the phone to judge the phone is belong user
        getRandomForCodePhone(req);
        String ra = (String) req.getSession().getAttribute("codePhone");
        String text1 = "【WSK的验证码】您的验证码是：";
        String text2 = "，请保护好自己的验证码。";
        String text = text1 + ra + text2;
        Properties prop = new Properties();
        prop.setProperty("mail.host", "smtp.139.com");
        prop.setProperty("mail.transport.protocol", "smtp");
        prop.setProperty("mail.smtp.auth", "true");
        prop.setProperty("mail.smtp.port", "25");
        try {
            String realPhone = phone;
//            phone += "@139.com";
//            message.setRecipient(Message.RecipientType.TO, new InternetAddress(phone));
//            message.setSubject("来自WSK的验证码");
//            message.setContent(text, "text/html;charset=UTF-8");
            //这里先不发生信息，以后要开启的
//            ts.sendMessage(message, message.getAllRecipients());
//            ts.close();
            req.getSession().setAttribute("phone", realPhone);
            return BaseResponse.success();
        } catch (Exception me) {
            me.printStackTrace();
            return BaseResponse.fail();
        }
    }

    // get the random phone`s code
    private void getRandomForCodePhone(HttpServletRequest req) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            sb.append(random.nextInt(10));
        }
        System.out.println(sb.toString());
        req.getSession().setAttribute("codePhone", sb.toString());
    }

//    //检验验证码
//    private boolean checkPhoto(String photo, HttpServletRequest request) {
//        photo = photo.toLowerCase();
//        String true_photo = (String) request.getSession().getAttribute("rand");
//        return true_photo.equals(photo);
//    }

    //To determine whether the user's mobile phone number exists
    private boolean isUserPhoneExists(String phone) {
        boolean result = false;
        try {
            int id = userInformationService.selectIdByPhone(phone);
            if (id == 0) {
                return result;
            }
            UserInformation userInformation = userInformationService.selectByPrimaryKey(id);

            if (StringUtils.getInstance().isNullOrEmpty(userInformation)) {
                return false;
            }
            String userPhone = userInformation.getPhone();
            result = !userPhone.equals("");
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
        return result;
    }


}
