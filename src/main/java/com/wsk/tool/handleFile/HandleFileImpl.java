package com.wsk.tool.handleFile;

import java.io.*;

/**
 * Created by wsk1103 on 2017/5/1.
 */
public class HandleFileImpl implements HandleFile {
    @Override
    public String readFile(String path) {
        String result;
//        path = "txt/wsk_protocol.txt";
        File file = new File(path);
//        File file = ResourceUtils.getFile(path)
        if (!file.exists()) {
            result = "file is not exists.";
            return result;
        }
        FileReader fileReader = null;
        try {
            fileReader = new FileReader(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        assert fileReader != null;
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        StringBuilder stringBuffer = new StringBuilder();
        try {
            while ((result = bufferedReader.readLine()) != null) {
                stringBuffer.append(result).append("\n");
            }
            fileReader.close();
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }

    @Override
    public boolean writeFile(String path, String content) {
        return false;
    }

    @Override
    public boolean deleteFile(String path) {
        return false;
    }

//    public static void main(String[] args) {
//        HandleFile handleFile = new HandleFileImpl();
//        String s = handleFile.readFile("txt/wsk_protocol.txt");
//        System.out.println(s);
//    }
}
