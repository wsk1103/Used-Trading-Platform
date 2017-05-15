package com.wsk.controller;

import com.wsk.pojo.*;
import com.wsk.service.*;
import com.wsk.token.TokenProccessor;
import com.wsk.tool.StringUtils;
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
import java.util.List;

/**
 * Created by wsk1103 on 2017/5/9.
 */
@Controller
public class UserController {

    @Resource
    private UserInformationService userInformationService;
    @Resource
    private UserPasswordService userPasswordService;
    @Resource
    private UserCollectionService userCollectionService;
    @Resource
    private UserReleaseService userReleaseService;
    @Resource
    private BoughtShopService boughtShopService;
    @Resource
    private UserWantService userWantService;
    @Resource
    private ShopCarService shopCarService;
    @Resource
    private OrderFormService orderFormService;
    @Resource
    private GoodsOfOrderFormService goodsOfOrderFormService;
    @Resource
    private UserStateService userStateService;

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

    //用户注册,拥有插入数据而已，没什么用的
    @RequestMapping(value = "/registered", method = RequestMethod.POST)
    public String registered(Model model,
                             @RequestParam String name, @RequestParam String phone, @RequestParam String password) {
        UserInformation userInformation = new UserInformation();
        userInformation.setUsername(name);
        userInformation.setPhone(phone);
        userInformation.setModified(new Date());
        userInformation.setCreatetime(new Date());
        if (userInformationService.insertSelective(userInformation) == 1) {
            int uid = userInformationService.selectIdByPhone(phone);
            UserPassword userPassword = new UserPassword();
            userPassword.setModified(new Date());
            password = Encrypt.getMD5(password);
            userPassword.setPassword(password);
            userPassword.setUid(uid);
            int result = userPasswordService.insertSelective(userPassword);
            if (result != 1) {
                model.addAttribute("result", "fail");
                return "success";
            }
            model.addAttribute("result", "success");
            return "success";
        }
        model.addAttribute("result", "fail");
        return "success";
    }

    //用户注册
    @RequestMapping(value = "/registered", method = RequestMethod.GET)
    public String registered() {
        return "registered";
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

    //完善用户基本信息，认证
    @RequestMapping(value = "certification", method = RequestMethod.POST)
    public String certification(HttpServletRequest request, Model model,
                                @RequestParam String realName, @RequestParam String clazz,@RequestParam String token,
                                @RequestParam String sno, @RequestParam String dormitory,@RequestParam String gender) {
        String certificationToken = (String) request.getSession().getAttribute("certificationToken");
        //防止重复提交
        if (Empty.isNullOrEmpty(certificationToken) || !certificationToken.equals(token)) {
            return "";
        } else {
            request.getSession().removeAttribute("certificationToken");
        }
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        //该用户还没有登录
        if (Empty.isNullOrEmpty(userInformation)) {
            return "";
        }
        realName = StringUtils.replaceBlank(realName);
        clazz = StringUtils.replaceBlank(clazz);
        sno = StringUtils.replaceBlank(sno);
        dormitory = StringUtils.replaceBlank(dormitory);
        gender = StringUtils.replaceBlank(gender);
        //数据格式错误
        if (realName.length()>25 || clazz.length()>25 || sno.length()>12 || dormitory.length()>25 || gender.length()>2){
            return "";
        }
        if (realName.length() < 1 || clazz.length() < 1 || sno.length() < 1 || dormitory.length() < 1 || gender.length() < 1) {
            return "";
        }
        userInformation.setRealname(realName);
        userInformation.setClazz(clazz);
        userInformation.setModified(new Date());
        userInformation.setSno(sno);
        userInformation.setDormitory(dormitory);
        userInformation.setGender(gender);
        int result = userInformationService.updateByPrimaryKeySelective(userInformation);
        if (result != 1){
            //更新失败，认证失败
            return "";
        }
        //认证成功
        return "";
    }

    //查看用户收藏的货物的总数
    private int getCollectionCounts(int uid) {
        return userCollectionService.getCounts(uid);
    }

    //查看收藏，一次10个
    private List<UserCollection> selectContectionByUid(int uid, int start) {
        return userCollectionService.selectByUid(uid, start);
    }

    //查看用户发布的货物的总数
    private int getReleaseCounts(int uid) {
        return userReleaseService.getCounts(uid);
    }

    //查看发布的货物，一次10个
    private List<UserRelease> selectReleaseByUid(int uid, int start) {
        return userReleaseService.selectByUid(uid, start);
    }

    //查看用户购买到的物品的总数
    private int getBoughtShopCounts(int uid) {
        return boughtShopService.getCounts(uid);
    }

    //查看用户的购买，10个
    private List<BoughtShop> selectBoughtShopByUid(int uid, int start) {
        return boughtShopService.selectByUid(uid, start);
    }

    //查看用户的求购总个数
    private int getUserWantCounts(int uid) {
        return userWantService.getCounts(uid);
    }

    //求购列表10
    private List<UserWant> selectUserWantByUid(int uid, int start) {
        return userWantService.selectByUid(uid, start);
    }

    //我的购物车总数
    private int getShopCarCounts(int uid) {
        return shopCarService.getCounts(uid);
    }

    //购物车列表  10
    private List<ShopCar> selectShopCarByUid(int uid, int start) {
        return shopCarService.selectByUid(uid, start);
    }

    //查看订单总数
    private int getOrderFormCounts(int uid) {
        return orderFormService.getCounts(uid);
    }

    //订单列表 10个
    private List<OrderForm> selectOrderFormByUid(int uid, int start) {
        return orderFormService.selectByUid(uid, start);
    }

    //订单中的商品
    private List<GoodsOfOrderForm> selectGoodsOfOrderFormByOFid(int ofid) {
        return goodsOfOrderFormService.selectByOFid(ofid);
    }

    //查看用户的状态
    private UserState selectUserStateByUid(int uid) {
        return userStateService.selectByUid(uid);
    }

    //判断该手机号码及其密码是否一一对应
    private boolean getId(String phone, String password, HttpServletRequest request) {
        int uid = userInformationService.selectIdByPhone(phone);
        if (Empty.isNullOrEmpty(uid)) {
            return false;
        }
        UserInformation userInformation = userInformationService.selectByPrimaryKey(uid);
        password = Encrypt.getMD5(password);
        if (!password.equals(userPasswordService.selectByUid(userInformation.getId()).getPassword())) {
            return false;
        }
        //如果密码账号对应正确，将userInformation存储到session中
        request.getSession().setAttribute("userInformation", userInformation);
        request.getSession().setAttribute("uid", uid);
        return true;
    }
}
