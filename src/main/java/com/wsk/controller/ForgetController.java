package com.wsk.controller;

import com.wsk.pojo.UserInformation;
import com.wsk.pojo.UserPassword;
import com.wsk.service.UserInformationService;
import com.wsk.service.UserPasswordService;
import com.wsk.tool.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
    @ResponseBody
    public Map checkPhone(HttpServletRequest request, Model model,
                          @RequestParam String code, @RequestParam String token) {
        //get the phone which is saved in the session
//        String realPhone = (String) request.getSession().getAttribute("phone");
        Map<String, Integer> map = new HashMap<>();
        String name = request.getParameter("name");
        if (!StringUtils.getInstance().isNullOrEmpty(name))
            request.getSession().setAttribute("name", name);
        //judge the token 防止重复提交
        String checkCodeToken = (String) request.getSession().getAttribute("token");
        if (StringUtils.getInstance().isNullOrEmpty(checkCodeToken) || !checkCodeToken.equals(token)) {
//            checkCodeToken = TokenProccessor.getInstance().makeToken();
//            request.getSession().setAttribute("checkCodeToken",checkCodeToken);
//            model.addAttribute("token",checkCodeToken);
            map.put("result", 0);
            return map;
        }
//        else {
////            request.getSession().removeAttribute("checkCodeToken");
//        }
        //获得token，适用与后续错误操作
//        checkCodeToken = TokenProccessor.getInstance().makeToken();
        //验证码错误
        if (!checkCodePhone(code, request)) {
            //check the phone`s code,and it is false;
//            model.addAttribute("phone", realPhone);
//            request.getSession().setAttribute("checkCodeToken",checkCodeToken);
//            model.addAttribute("token",checkCodeToken);
//            model.addAttribute("error", "验证码错误");
            map.put("result", 0);
            return map;
        }
        map.put("result", 1);
        return map;
    }

    //更新密码
    @RequestMapping("updatePassword")
    @ResponseBody
    public Map updatePassword(HttpServletRequest request, Model model,
                              @RequestParam String password, @RequestParam String token) {
        //防止重复提交
        String updatePasswordToken = (String) request.getSession().getAttribute("token");
        Map<String, Integer> map = new HashMap<>();
        if (StringUtils.getInstance().isNullOrEmpty(updatePasswordToken) || !updatePasswordToken.equals(token)) {
            map.put("result", 0);
            return map;
        }
//        else {
//            request.getSession().removeAttribute("updatePasswordToken");
//        }
        String realPhone = (String) request.getSession().getAttribute("phone");
//        updatePasswordToken = TokenProccessor.getInstance().makeToken();
        UserPassword userPassword = new UserPassword();
        String newPassword = StringUtils.getInstance().getMD5(password);
        int uid;
        try {
            uid = userInformationService.selectIdByPhone(realPhone);
            if (uid == 0) {
                map.put("result", 0);
                return map;
            }
        } catch (Exception e) {
            e.printStackTrace();
            map.put("result", 0);
            return map;
        }
        int id = userPasswordService.selectByUid(uid).getId();
        userPassword.setId(id);
        userPassword.setUid(uid);
        userPassword.setModified(new Date());
        userPassword.setPassword(newPassword);
        int result;
        try {
            result = userPasswordService.updateByPrimaryKeySelective(userPassword);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("result", 0);
            return map;
        }
        //更新失败
        if (result != 1) {
//            request.getSession().setAttribute("updatePasswordToken",updatePasswordToken);
//            model.addAttribute("token",updatePasswordToken);
//            model.addAttribute("phone", realPhone);
            map.put("result", 0);
            return map;
        }
        UserInformation userInformation = userInformationService.selectByPrimaryKey(uid);
        request.getSession().setAttribute("userInformation", userInformation);
        map.put("result", 1);
        return map;
    }

    //check the phone`s code
    private boolean checkCodePhone(String code_phone, HttpServletRequest request) {
//        String true_code_phone = (String) request.getSession().getAttribute("codePhone");
        String true_code_phone = "12251103";
        return code_phone.equals(true_code_phone);
    }
}
