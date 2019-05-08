package com.wsk.error;

import lombok.Data;

/**
 * @author wsk1103
 * @date 2019/5/8
 * @description 业务错误类
 */
@Data
public class BaseException extends RuntimeException {

    private int code;
    private String msg;

    public BaseException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}
