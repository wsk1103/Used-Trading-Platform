package com.wsk.handle;

import com.wsk.error.BaseException;
import com.wsk.response.BaseResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;

/**
 * @author wsk1103
 * @date 2019/5/8
 * @description 描述
 */
@ControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    /**
     * 全局统一异常返回信息
     */
    public static final String DEFAULT_ERROR_MESSAGE = "系统维护，请稍后访问";

    /**
     * 500的所有异常会被这个方法捕获
     *
     * @param req 请求
     * @param e   异常
     * @return 输出
     * @throws Exception 未知异常
     */
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public BaseResponse handleAllError(HttpServletRequest req, Exception e) {
        log.error("系统内部异常", e);
        return BaseResponse.fail();
    }

    /**
     * 500的事务异常会被这个方法捕获
     *
     * @param req 请求
     * @param e   异常
     * @return 输出
     * @throws Exception 未知异常
     */
    @ExceptionHandler(BaseException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ResponseBody
    public BaseResponse handleBizError(HttpServletRequest req, BaseException e) {
        log.error("业务异常", e);
        return BaseResponse.fail(e.getMsg());
    }
}
