package com.wsk.controller;

import com.wsk.pojo.*;
import com.wsk.service.*;
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
    @Resource
    private SpecificeService specificeService;
    @Resource
    private ClassificationService classificationService;
    @Resource
    private AllKindsService allKindsService;
    @Resource
    private ShopContextService shopContextService;

    @RequestMapping("home")
    public String home(HttpServletRequest request, Model model) {
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        // if user login,the session will have the "userInformation"
        if (!Empty.isNullOrEmpty(userInformation)) {
            model.addAttribute("userInformation", userInformation);
        }
        //一般形式进入首页
        try {
//            ShopInformation shopInformation = shopInformationService.selectByPrimaryKey(1);
            List<ShopInformation> shopInformations = selectTen(0);
            model.addAttribute("shopInformations", shopInformations);
            int counts = getShopCounts();
            model.addAttribute("shopInformationCounts", counts);
            StringBuffer stringBuffer;
            for (ShopInformation shopInformation : shopInformations) {
                stringBuffer = new StringBuffer();
                int sid = shopInformation.getId();
                int sort = shopInformation.getSort();
                Specific specific = selectSpecificBySort(sort);
                int cid = specific.getCid();
                Classification classification = selectClassificationByCid(cid);
                int aid = classification.getAid();
                AllKinds allKinds = selectAllKindsByAid(aid);
                stringBuffer.append(allKinds.getName());
                stringBuffer.append("-");
                stringBuffer.append(classification.getName());
                stringBuffer.append("-");
                stringBuffer.append(specific.getName());
                ShopPicture shopPicture = selectShopPictureOnlyOne(sid);
                request.getSession().setAttribute("shopPicture" + sid, shopPicture.getPicture());
                request.getSession().setAttribute("sort" + sort, stringBuffer.toString());
//                model.addAttribute("shopPicture" + sid, shopPicture);
//                model.addAttribute("sort" + sort, stringBuffer.toString());
            }
//            model.addAttribute("shopInformation", shopInformation);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }

    //获取商品，分页,一次性获取10个
    private List<ShopInformation> selectTen(int start) {
        List<ShopInformation> list = shopInformationService.selectTen(start);
        return list;
    }

    //获取最详细的分类，第三层
    private Specific selectSpecificBySort(int sort) {
        return specificeService.selectByPrimaryKey(sort);
    }

    //获得第二层分类
    private Classification selectClassificationByCid(int cid) {
        return classificationService.selectByPrimaryKey(cid);
    }

    //获得第一层分类
    private AllKinds selectAllKindsByAid(int aid) {
        return allKindsService.selectByPrimaryKey(aid);
    }

    //获得商品总页数
    private int getShopCounts(){
        return shopInformationService.getCounts();
    }

    //获得商品留言总页数
    private int getShopContextCounts(int sid) {
        return shopContextService.getCounts(sid);
    }

    //获得商品留言，10条
    private List<ShopContext> selectShopContextBySid(int sid, int start) {
        return shopContextService.selectBySid(sid, start);
    }

    //获取商品首页图片
    private ShopPicture selectShopPictureOnlyOne(int sid) {
        return shopPictureService.selectBySidOnlyOne(sid);
    }


}
