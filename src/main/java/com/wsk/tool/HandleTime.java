package com.wsk.tool;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wsk1103 on 2017/5/21.
 */
public class HandleTime {
    public static String DateToString(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String result = simpleDateFormat.format(date);
        return result;
    }

}
