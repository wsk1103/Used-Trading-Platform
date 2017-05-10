package com.wsk.tool.encrypt;

import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

/**
 * Created by Maibenben on 2017/4/30.
 */
public class Encrypt {
    private final static String WSK = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
    public static String getMD5(String str){
        String result = "";
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            BASE64Encoder base64Encoder = new BASE64Encoder();
            result = base64Encoder.encode(md5.digest(str.getBytes("UTF-8")));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }
    public static String getRandom(){
        Random random = new Random();

        StringBuffer stringBuffer = new StringBuffer();
        char[] now = WSK.toCharArray();
        for (int i = 0;i<10;i++) {
            stringBuffer.append(now[random.nextInt(WSK.length())]);
        }
        return stringBuffer.toString();
    }

    public static void main(String[] args) {
        System.out.println(getMD5("qq12345"));

    }
}
