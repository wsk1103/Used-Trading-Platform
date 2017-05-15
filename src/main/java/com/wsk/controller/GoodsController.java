package com.wsk.controller;

import com.wsk.pojo.ShopInformation;
import com.wsk.pojo.ShopPicture;
import com.wsk.pojo.UserInformation;
import com.wsk.service.ShopInformationService;
import com.wsk.service.ShopPictureService;
import com.wsk.token.TokenProccessor;
import com.wsk.tool.StringUtils;
import com.wsk.tool.empty.Empty;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by wsk1103 on 2017/5/14.
 */
@Controller
public class GoodsController {
    @Resource
    private ShopInformationService shopInformationService;
    @Resource
    private ShopPictureService shopPictureService;


    //进入到发布商品页面
    @RequestMapping(value = "publish", method = RequestMethod.GET)
    public String publish(HttpServletRequest request, Model model) {
        //先判断用户有没有登录
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        if (Empty.isNullOrEmpty(userInformation)) {
            //如果没有登录
            return "";
        }
        //如果登录了，判断该用户有没有经过认证
        String realName = userInformation.getRealname();
        String clazz = userInformation.getClazz();
        String sno = userInformation.getSno();
        String dormitory = userInformation.getDormitory();
        if (Empty.isNullOrEmpty(realName) || Empty.isNullOrEmpty(clazz) || Empty.isNullOrEmpty(sno) || Empty.isNullOrEmpty(dormitory)) {
            //没有
            return "";
        }
        String goodsToken = TokenProccessor.getInstance().makeToken();
        request.getSession().setAttribute("goodsToken", goodsToken);
        model.addAttribute("token", goodsToken);
        return "";
    }

    //发布商品
    @RequestMapping(value = "insertGoods", method = RequestMethod.POST)
    public String insertGoods(@RequestParam String name, @RequestParam int level, @RequestParam String remark, @RequestParam double price,
                              @RequestParam int sort, @RequestParam int quantity,
                              @RequestParam String token, @RequestParam MultipartFile image,
                              HttpServletRequest request, Model model) {
        String goodsToken = (String) request.getSession().getAttribute("goodsToken");
        //防止重复提交
        if (Empty.isNullOrEmpty(goodsToken) || !goodsToken.equals(token)) {
            return "";
        } else {
            request.getSession().removeAttribute("goodsToken");
        }
//        //从session中获得用户的基本信息
//        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
//        if (Empty.isNullOrEmpty(userInformation)) {
//            return "";
//        }
        String path = "D:\\";
        String random = "image\\" + StringUtils.getRandomChar() + new Date().getTime();
        String fileName = "\\" + random + ".jpg";
        File file = new File(path, fileName);
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            image.transferTo(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        name = StringUtils.replaceBlank(name);
        remark = StringUtils.replaceBlank(remark);
        if (Empty.isNullOrEmpty(name) || Empty.isNullOrEmpty(level) || Empty.isNullOrEmpty(remark) || Empty.isNullOrEmpty(price)
                || Empty.isNullOrEmpty(sort) || Empty.isNullOrEmpty(quantity) || name.length() > 25 || remark.length() > 122) {
            return "";
        }
        ShopInformation shopInformation = new ShopInformation();
        shopInformation.setName(name);
        shopInformation.setLevel(level);
        shopInformation.setRemark(remark);
        shopInformation.setPrice(new BigDecimal(price));
        shopInformation.setSort(sort);
        shopInformation.setQuantity(quantity);
        shopInformation.setModified(new Date());
        shopInformation.setImage(random);
        shopInformation.setUid(4);
        int uid = (int) request.getSession().getAttribute("uid");
        shopInformation.setUid(uid);
        try {
            int result = shopInformationService.insertSelective(shopInformation);
            //插入失败？？？
            if (result != 1) {
//                int sid = shopInformationService.selectIdByImage(random);
//                shopInformationService.deleteByPrimaryKey(sid);
                return "";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ShopPicture shopPicture = new ShopPicture();
        shopPicture.setModified(new Date());
        shopPicture.setPicture(fileName);
        int sid = shopInformationService.selectIdByImage(random);
        shopPicture.setSid(sid);
        int result = shopPictureService.insertSelective(shopPicture);
        if (result != 1) {
            shopInformationService.deleteByPrimaryKey(sid);
            return "";
        }
        model.addAttribute("shopPicture", shopPicture);
        model.addAttribute("shopInformation", shopInformation);
        return "success";
    }

    //模糊查询商品
    @RequestMapping(value = "findByName")
    @ResponseBody
    public List<ShopInformation> findByName(@RequestParam String name) {
        List list = shopInformationService.selectByName(name);
        return list;
    }

}
