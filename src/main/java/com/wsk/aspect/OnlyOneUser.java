package com.wsk.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

/**
 * Created by wsk1103 on 2017/10/18.
 */
@Aspect
public class OnlyOneUser {
    @Before(value = "execution(* com.wsk.controller.UserController.login(..))")
    public void isExit(){

    }
}
