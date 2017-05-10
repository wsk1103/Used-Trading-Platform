package com.wsk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wsk1103 on 2017/5/9.
 */
@Controller
public class UserController {

    @RequestMapping("/wsk")
    public String wsk(){
        return "/index";
    }
}
