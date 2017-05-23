package com.wsk.tool;

import net.sourceforge.tess4j.Tesseract;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Maibenben on 2017/1/6.
 */
public class OCR {
    private static String FindOCR(String srImage) {
        try {
            System.out.println("start");
            double start=System.currentTimeMillis();
            File imageFile = new File(srImage);
            if (!imageFile.exists()) {
                return "图片不存在";
            }
            BufferedImage textImage = ImageIO.read(imageFile);
            Tesseract instance=Tesseract.getInstance();
            instance.setDatapath("C:\\Program Files (x86)\\Tesseract-OCR\\tessdata");//设置训练库
            instance.setLanguage("chi_sim");//中文识别
            String result = null;
            result = instance.doOCR(textImage);
            double end=System.currentTimeMillis();
            System.out.println("耗时"+(end-start)+" ms");
//            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return "发生未知错误";
        }
//        assertEquals(expResult, result.substring(0, expResult.length()));
    }
    private static boolean isOk(String image) throws IOException {
        String result = FindOCR(image);
        ArrayList<String> list= StringUtils.getInstance().readTxt();
        result = result.replaceAll("\\s*", "");
        System.out.println(result);
        for (String cc : list) {
            int a = result.indexOf(cc);
            if (a !=-1) {
                return false;
            }
        }
        return true;
    }
    public static boolean isOk2(String image){
        String result = FindOCR(image);
        ArrayList<String> list;
        try {
            list = StringUtils.getInstance().readTxt();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        result = result.replaceAll("\\s*", "");
        for (String cc : list) {
            int a = result.indexOf(cc);
            if (a !=-1) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) throws Exception {
//        String result=FindOCR("image/test1.jpg");
        boolean a=isOk("image/9.jpg");
        if (a)
            System.out.println("true");
        else
            System.out.println("false");
//        System.out.println(result);
    }
}
