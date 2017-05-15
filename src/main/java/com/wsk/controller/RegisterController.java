package com.wsk.controller;

import com.wsk.pojo.UserInformation;
import com.wsk.pojo.UserPassword;
import com.wsk.service.UserInformationService;
import com.wsk.service.UserPasswordService;
import com.wsk.token.TokenProccessor;
import com.wsk.tool.empty.Empty;
import com.wsk.tool.encrypt.Encrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by wsk1103 on 2017/5/9.
 */
@Controller
public class RegisterController {
    @Resource
    private UserPasswordService userPasswordService;

    @Resource
    private UserInformationService userInformationService;

    //开始注册用户
    @RequestMapping("insertUser")
    public String insertUser(HttpServletRequest request, Model model,
                             @RequestParam String username, @RequestParam String password, @RequestParam String token) {
        //存储与session中的手机号码
        String realPhone = (String) request.getSession().getAttribute("phone");
        //token，唯一标识
        String insertUserToken = (String) request.getSession().getAttribute("insertUserToken");
        //防止重复提交
        if (Empty.isNullOrEmpty(insertUserToken) || insertUserToken.equals(token)) {
            insertUserToken = TokenProccessor.getInstance().makeToken();
            request.getSession().setAttribute("insertUserToken", insertUserToken);
            model.addAttribute("token", insertUserToken);
            return "";
        } else {
            request.getSession().removeAttribute("insertUserToken");
        }
        insertUserToken = TokenProccessor.getInstance().makeToken();
        //该手机号码已经存在
        if (!Empty.isNullOrEmpty(userInformationService.selectIdByPhone(realPhone))) {
            model.addAttribute("token", insertUserToken);
            model.addAttribute("phone", realPhone);
            return "";
        }
        //用户信息
        UserInformation userInformation = new UserInformation();
        userInformation.setPhone(realPhone);
        userInformation.setCreatetime(new Date());
        userInformation.setUsername(username);
        userInformation.setModified(new Date());

        int result = userInformationService.insertSelective(userInformation);
        //如果用户基本信息写入成功
        if (result == 1) {
            int uid = userInformationService.selectIdByPhone(realPhone);
            String newPassword = Encrypt.getMD5(password);
            UserPassword userPassword = new UserPassword();
            userPassword.setModified(new Date());
            userPassword.setUid(userInformation.getId());
            userPassword.setPassword(newPassword);
            result = userPasswordService.insertSelective(userPassword);
            //密码写入失败
            if (result != 1) {
                userInformationService.deleteByPrimaryKey(userInformation.getId());
                model.addAttribute("token", insertUserToken);
                model.addAttribute("phone", realPhone);
                return "";
            } else {
                //注册成功
                return "";
            }
        }
        //注册失败
        model.addAttribute("token", insertUserToken);
        model.addAttribute("phone", realPhone);
        return "";
    }
}
