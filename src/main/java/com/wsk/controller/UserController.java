package com.wsk.controller;

import com.wsk.pojo.UserInformation;
import com.wsk.service.UserInformationService;
import com.wsk.service.UserPasswordService;
import com.wsk.token.TokenProccessor;
import com.wsk.tool.empty.Empty;
import com.wsk.tool.encrypt.Encrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by wsk1103 on 2017/5/9.
 */
@Controller
public class UserController {

    @Resource
    private UserInformationService userInformationService;

    @Resource
    private UserPasswordService userPasswordService;

    @RequestMapping("/")
    public String wsk(Model model) {
        model.addAttribute("wsk", "wsk");
        return "/index";
    }

    //进入登录界面
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(HttpServletRequest request, Model model) {
        String loginToken = TokenProccessor.getInstance().makeToken();
        request.getSession().setAttribute("loginToken", loginToken);
        model.addAttribute("token", loginToken);
        return "login";
    }

    //验证登录
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, Model model,
                        @RequestParam String phone, @RequestParam String password, @RequestParam String token) {
        String loginToken = (String) request.getSession().getAttribute("loginToken");
        //防止重复提交
        if (Empty.isNullOrEmpty(loginToken) || !token.equals(loginToken)) {
            return "index";
        } else {
            request.getSession().removeAttribute("loginToken");
        }
        boolean b = getId(phone, password, request);
        //失败，不存在该手机号码
        if (!b) {
            model.addAttribute("error", "手机号码或者密码错误");
            model.addAttribute("phone", phone);
            return "";
        }

        return "index";
    }

    //判断该手机号码及其密码是否一一对应
    private boolean getId(String phone, String password, HttpServletRequest request) {
        UserInformation userInformation = userInformationService.selectIdByPhone(phone);
        if (Empty.isNullOrEmpty(userInformation)) {
            return false;
        }
        password = Encrypt.getMD5(password);
        if (!password.equals(userPasswordService.selectByUid(userInformation.getId()).getPassword())) {
            return false;
        }
        //如果密码账号对应正确，将userInformation存储到session中
        request.getSession().setAttribute("userInformation", userInformation);
        return true;
    }
}
