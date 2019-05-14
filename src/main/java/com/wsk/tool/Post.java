//package com.wsk.tool;
//
//
//import com.alibaba.fastjson.JSON;
//import sun.misc.BASE64Encoder;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.FileInputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.Map;
//
//
///**
// * Created by wsk1103 on 2017/1/2.
// */
//public class Post{
////    /**
////     * 向指定 URL 发送POST方法的请求
////     *
////     * @param url
////     *            发送请求的 URL
////     * @param param
////     *            请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
////     * @return 所代表远程资源的响应结果
////     */
//    static HttpServletRequest request;
//    static HttpServletResponse response;
//    static String GetImageStr(String imgFilePath) {// 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
//        byte[] data = null;
//
//// 读取图片字节数组
//        try {
//            InputStream in = new FileInputStream(imgFilePath);
//            data = new byte[in.available()];
//            in.read(data);
//            in.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//// 对字节数组Base64编码
////        Base64 encoder = new Base64();
////        return encoder.encodeAsString(data);
//        BASE64Encoder encoder = new BASE64Encoder();
//        return encoder.encode(data);// 返回Base64编码过的字节数组字符串
//    }
//    public static void main(String[] args)  {
//        String base64=GetImageStr("image/02.jpg");
//        String pathUrl="https://openapi.baidu.com/rest/2.0/vis-antiporn/v1/antiporn";
//        String access_token="23.bf80a715bd53407f67d1639ee7931981.2592000.1487086099.1094025852-9152927";
//        String image=base64;
//        Map<String,String> param=new HashMap<String,String>();
//        param.put("access_token", access_token);
//        param.put("image", image);
//        String sr = HttpUtils.submitPostData(pathUrl, param, "utf-8");
//        System.out.println(sr);
//        RecognitionResultBean recognitionResultBean = JSON.parseObject(sr, RecognitionResultBean.class);
//        ArrayList<RecognitionResultBean.ResultArrayClass> list=recognitionResultBean.getResult();
//        for (RecognitionResultBean.ResultArrayClass rr:list){
//            System.out.print(rr.getClass_name()+"   ");
//            System.out.println(rr.getProbability());
//            if (rr.getClass_name().equals("一般色情")&&rr.getProbability()>0.25){
//                System.out.println("msg：这是一张色情图片");
//            }
//            if (rr.getClass_name().equals("卡通色情")&&rr.getProbability()>0.25){
//                System.out.println("msg：这是一张卡通色情图片");
//            }
//        }
//    }
//}
