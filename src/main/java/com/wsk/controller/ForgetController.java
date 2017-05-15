package com.wsk.controller;

import com.wsk.pojo.UserPassword;
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
import java.util.Date;

/**
 * Created by wsk1103 on 2017/5/9.
 */
@Controller
public class ForgetController {

    @Resource
    private UserPasswordService userPasswordService;
    @Resource
    private UserInformationService userInformationService;

    //when the user click next button,check the information
    @RequestMapping(value = "checkCode", method = {RequestMethod.POST, RequestMethod.GET})
    public String checkPhone(HttpServletRequest request, Model model,
                             @RequestParam String code, @RequestParam String token) {
        //get the phone which is saved in the session
        String realPhone = (String) request.getSession().getAttribute("phone");
        //judge the token 防止重复提交
        String checkCodeToken = (String) request.getSession().getAttribute("checkCodeToken");
        if (Empty.isNullOrEmpty(checkCodeToken) || !checkCodeToken.equals(token)) {
            checkCodeToken = TokenProccessor.getInstance().makeToken();
            request.getSession().setAttribute("checkCodeToken",checkCodeToken);
            model.addAttribute("token",checkCodeToken);
            return "";
        } else {
            request.getSession().removeAttribute("checkCodeToken");
        }
        //获得token，适用与后续错误操作
        checkCodeToken = TokenProccessor.getInstance().makeToken();
        //验证码错误
        if (!checkCodePhone(code, request)) {
            //check the phone`s code,and it is false;
            model.addAttribute("phone", realPhone);
            request.getSession().setAttribute("checkCodeToken",checkCodeToken);
            model.addAttribute("token",checkCodeToken);
            model.addAttribute("error", "验证码错误");
            return "";
        }
        return "";
    }

    //更新密码
    @RequestMapping("updatePassword")
    public String updatePassword(HttpServletRequest request, Model model,
                                 @RequestParam String password, @RequestParam String token) {
        //防止重复提交
        String updatePasswordToken = (String) request.getSession().getAttribute("updatePasswordToken");
        if (Empty.isNullOrEmpty(updatePasswordToken) || !updatePasswordToken.equals(token)) {
            updatePasswordToken = TokenProccessor.getInstance().makeToken();
            request.getSession().setAttribute("updatePasswordToken",updatePasswordToken);
            model.addAttribute("token",updatePasswordToken);
            return "";
        } else {
            request.getSession().removeAttribute("updatePasswordToken");
        }
        String realPhone = (String) request.getSession().getAttribute("phone");
        updatePasswordToken = TokenProccessor.getInstance().makeToken();
        UserPassword userPassword = new UserPassword();
        String newPassword = Encrypt.getMD5(password);
        int uid = userInformationService.selectIdByPhone(realPhone);
        userPassword.setUid(uid);
        userPassword.setModified(new Date());
        userPassword.setPassword(newPassword);
        int result = userPasswordService.updateByPrimaryKey(userPassword);
        //更新失败
        if (result != 1) {
            request.getSession().setAttribute("updatePasswordToken",updatePasswordToken);
            model.addAttribute("token",updatePasswordToken);
            model.addAttribute("phone", realPhone);
            return "";
        }
        return "";
    }

    //check the phone`s code
    private boolean checkCodePhone(String code_phone, HttpServletRequest request) {
        String true_code_phone = (String) request.getSession().getAttribute("codePhone");
        return code_phone.equals(true_code_phone);
    }
}
