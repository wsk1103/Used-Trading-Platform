package com.wsk.controller;

import com.wsk.pojo.ShopInformation;
import com.wsk.pojo.UserInformation;
import com.wsk.service.ShopInformationService;
import com.wsk.token.TokenProccessor;
import com.wsk.tool.empty.Empty;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wsk1103 on 2017/5/14.
 */
@Controller
public class GoodsController {
    @Resource
    private ShopInformationService shopInformationService;
//    @Resource
//    private ShopPictureService shopPictureService;
//    @Resource
//    private UserReleaseService userReleaseService;


    //进入到发布商品页面
    @RequestMapping(value = "/publish_product", method = RequestMethod.GET)
    public String publish(HttpServletRequest request, Model model) {
        //先判断用户有没有登录
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        if (Empty.isNullOrEmpty(userInformation)) {
            //如果没有登录
//            userInformation = new UserInformation();
//            model.addAttribute("userInformation", userInformation);
            return "";
        } else {
            model.addAttribute("userInformation", userInformation);
        }
        //如果登录了，判断该用户有没有经过认证
        try {
            String realName = userInformation.getRealname();
            String clazz = userInformation.getClazz();
            String sno = userInformation.getSno();
            String dormitory = userInformation.getDormitory();
            if (Empty.isNullOrEmpty(realName) || Empty.isNullOrEmpty(clazz) || Empty.isNullOrEmpty(sno) || Empty.isNullOrEmpty(dormitory)) {
                //没有
                model.addAttribute("message", "请先认证真实信息");
                return "page/personal/personal_info";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
        String goodsToken = TokenProccessor.getInstance().makeToken();
        request.getSession().setAttribute("goodsToken", goodsToken);
        model.addAttribute("token", goodsToken);
        return "page/publish_product";
    }

    //模糊查询商品
    @RequestMapping(value = "/findShopByName")
    @ResponseBody
    public List<ShopInformation> findByName(@RequestParam String name) {
        return shopInformationService.selectByName(name);
    }

    //通过id查看商品的详情
    @RequestMapping(value = "/findShopById")
    @ResponseBody
    public ShopInformation findShopById(@RequestParam int id) {
        return shopInformationService.selectByPrimaryKey(id);
    }

//    //通过id查看商品详情
//    @RequestMapping(value = "/showShop")
//    public String showShop(@RequestParam int id, HttpServletRequest request, Model model) {
//        ShopInformation shopInformation =
//    }

}
