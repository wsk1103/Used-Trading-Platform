package com.wsk.tool;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by wsk1103 on 2017/10/18.
 */
public class OnlyOneUserSingle<K,V> {
    private volatile Map<K,V> map = new ConcurrentHashMap<>();
    private static class Single{
        private static final OnlyOneUserSingle onlyOneUserSingle = new OnlyOneUserSingle();
    }
    private OnlyOneUserSingle(){}
    public static OnlyOneUserSingle getSingle(){
        return Single.onlyOneUserSingle;
    }
    public void setMap(K k,V v){
        map.put(k, v);
    }
    public Map<K,V> getMap(){
        return map;
    }
}
