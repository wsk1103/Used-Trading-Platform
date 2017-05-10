package com.wsk.tool.phone;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by wsk1103 on 2017/5/9.
 */
public class Phone {
    public static boolean isPhone(String phone) {
        Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
        Matcher m = p.matcher(phone);
        return m.matches();
    }
}
