package com.wsk.tool;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by wsk1103 on 2017/5/22.
 */
public class SaveSession {
    private static final Map<String, Long> map1 = new HashMap<>();
//    private static final Map<String, Long> map2 = new HashMap<>();

    private SaveSession(){}

    private static class LaySaveSession{
        private static final SaveSession instance = new SaveSession();
    }


    public static SaveSession getInstance(){
        return LaySaveSession.instance;
    }

    public void save(String phone, Long time) {
        synchronized (map1) {
            map1.put(phone, time);
        }
    }

    public boolean isHave(String phone,long time) {
        synchronized (map1) {
            if (StringUtils.getInstance().isNullOrEmpty(map1.get(phone))) {
                map1.put(phone, time);
                return false;
            } else {
                long m_1_Time = map1.get(phone);
//                long m_2_Time = map2.get(phone);
                if (time<(m_1_Time)) {
                    map1.put(phone, time);
                    return true;
                } else {
                    return false;
                }
            }
        }
    }
    public void remove(String phone){
        synchronized (map1){
            if (!StringUtils.getInstance().isNullOrEmpty(map1.get(phone))) {
                map1.remove(phone);
//                map2.remove(phone);
            }
        }
    }
}
