package com.wsk.tool.handleFile;

import java.io.*;
import java.util.ArrayList;

/**
 * Created by wsk1103 on 2017/5/21.
 */
public class ReadTxt {
    public static ArrayList readTxt() throws IOException {
        ArrayList<String> list = new ArrayList<>();
        String encoding = "GBK";
        File file = new File("D:\\image\\txt\\all.txt");
        InputStreamReader reader = new InputStreamReader(new FileInputStream(file), encoding);
        BufferedReader bufferedReader = new BufferedReader(reader);
        String txt=null;
        while ((txt=bufferedReader.readLine())!=null){
            list.add(txt);
        }
        reader.close();
        return list;
    }
    public static String txtReplace(String test){
        try {
            ArrayList<String> list=readTxt();
            test=test.replaceAll("\\s*|\t|\r|\n", "");
            for (String aList : list) {
                test = test.replaceAll(aList, "**");
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return test;
    }

    public static void main(String[] args) {
        String cc = txtReplace("资源");
        System.out.println(cc);
    }
}
