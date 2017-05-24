package com.wsk.controller;

import com.wsk.pojo.UserInformation;
import com.wsk.pojo.UserPassword;
import com.wsk.service.UserInformationService;
import com.wsk.service.UserPasswordService;
import com.wsk.tool.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
public class RegisterController {
    @Resource
    private UserPasswordService userPasswordService;

    @Resource
    private UserInformationService userInformationService;

    //开始注册用户
    @RequestMapping("/insertUser")
    @ResponseBody
    public Map insertUser(HttpServletRequest request, Model model,
                          @RequestParam String password, @RequestParam String token) {
        //存储与session中的手机号码
        String realPhone = (String) request.getSession().getAttribute("phone");
        //token，唯一标识
        String insertUserToken = (String) request.getSession().getAttribute("token");
        Map<String, Integer> map = new HashMap<>();
        //防止重复提交
        if (StringUtils.getInstance().isNullOrEmpty(insertUserToken) || !insertUserToken.equals(token)) {
            map.put("result",0);
            return map;
        }
        //该手机号码已经存在
        try {
            int uid = userInformationService.selectIdByPhone(realPhone);
            if (uid!=0) {
//            model.addAttribute("token", insertUserToken);
//            model.addAttribute("phone", realPhone);
                map.put("result",0);
                return map;
            }
        } catch (Exception e) {
            e.printStackTrace();
            map.put("result",0);
            return map;
        }

        //用户信息
        UserInformation userInformation = new UserInformation();
        userInformation.setPhone(realPhone);
        userInformation.setCreatetime(new Date());
        String username = (String) request.getSession().getAttribute("name");
        userInformation.setUsername(username);
        userInformation.setModified(new Date());
        int result;
        try {
            result = userInformationService.insertSelective(userInformation);
        } catch (Exception e) {
            e.printStackTrace();
//            model.addAttribute("token", insertUserToken);
//            model.addAttribute("phone", realPhone);
            map.put("result",0);
            return map;
        }
        //如果用户基本信息写入成功
        int uid ;
        if (result == 1) {
            uid = userInformationService.selectIdByPhone(realPhone);
            String newPassword = StringUtils.getInstance().getMD5(password);
            UserPassword userPassword = new UserPassword();
            userPassword.setModified(new Date());
            userPassword.setUid(uid);
            userPassword.setPassword(newPassword);
            try {
                result = userPasswordService.insertSelective(userPassword);
            } catch (Exception e){
                userInformationService.deleteByPrimaryKey(uid);
                e.printStackTrace();
                map.put("result",0);
                return map;
            }
            //密码写入失败
            if (result != 1) {
                userInformationService.deleteByPrimaryKey(uid);
//                model.addAttribute("token", insertUserToken);
//                model.addAttribute("phone", realPhone);
                map.put("result",0);
                return map;
            } else {
                //注册成功
                try {
                    userInformation = userInformationService.selectByPrimaryKey(uid);
                    request.getSession().setAttribute("userInformation", userInformation);
                    map.put("result", 1);
                } catch (Exception e) {
                    e.printStackTrace();
                    map.put("result", 0);
                }
                return map;
            }
        }
        //注册失败
//        model.addAttribute("token", insertUserToken);
//        model.addAttribute("phone", realPhone);
        map.put("result",0);
        return map;
    }
}
