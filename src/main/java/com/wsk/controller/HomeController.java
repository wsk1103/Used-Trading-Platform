package com.wsk.controller;

import com.wsk.pojo.ShopInformation;
import com.wsk.pojo.ShopPicture;
import com.wsk.pojo.UserInformation;
import com.wsk.service.ShopInformationService;
import com.wsk.service.ShopPictureService;
import com.wsk.tool.empty.Empty;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wsk1103 on 2017/5/11.
 */
@Controller
public class HomeController {
    @Resource
    private ShopInformationService shopInformationService;
@Resource
private ShopPictureService shopPictureService;

    @RequestMapping("home")
    public String home(HttpServletRequest request, Model model){
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        // if user login,the session will have the "userInformation"
        if (!Empty.isNullOrEmpty(userInformation)) {
            model.addAttribute("userInformation", userInformation);
        }
        //一般形式进入首页
        try {
//            ShopInformation shopInformation = shopInformationService.selectByPrimaryKey(1);
            List<ShopInformation> shopInformations = shopInformationService.selectTen(0);
            model.addAttribute("shopInformations", shopInformations);
            int counts = shopInformationService.getCounts();
            model.addAttribute("shopInformationCounts", counts);
            for (ShopInformation shopInformation : shopInformations) {
                int sid = shopInformation.getId();
                ShopPicture shopPicture = shopPictureService.selectBySidOnlyOne(sid);
                model.addAttribute("shopPicture" + sid, shopPicture);
            }
//            model.addAttribute("shopInformation", shopInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }
}
