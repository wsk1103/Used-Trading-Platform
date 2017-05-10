package com.wsk.tool.handleFile;

/**
 * Created by wsk1103 on 2017/5/1.
 */
public interface HandleFile {
    String readFile(String path);

    boolean writeFile(String path, String content);

    boolean deleteFile(String path);
}
