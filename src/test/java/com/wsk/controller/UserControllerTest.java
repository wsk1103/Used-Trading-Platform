package com.wsk.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.Random;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * Created by wsk1103 on 2017/5/24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class UserControllerTest {

    private MockMvc mockMvc;

    @InjectMocks
    private UserController userControllerTest;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockMvc = MockMvcBuilders.standaloneSetup(userControllerTest).build();
    }
    @Test
    public void deleteShopCar() throws Exception {
        this.mockMvc.perform(post("/deleteShopCar")
                .param("id","2")
                .param("sid","5")
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void insertShopContext() throws Exception {
        Random random = new Random();
        int level,uid,quantity;
        double price;
        for (int i = 1,j=93;i<1000;i++,j++) {
            level = random.nextInt(10)+1;
            price = Math.random()*1000+1;
            quantity = random.nextInt(10)+1;
            uid = random.nextInt(100)+1;
            this.mockMvc.perform(post("/test")
                    .param("name","百年孤独")
                    .param("level",""+level)
                    .param("sid",""+j)
                    .param("remark","看上的请联系我，QQ：1261709167，微信：1261709167")
                    .param("price",""+price)
                    .param("sort",""+i)
                    .param("quantity",""+quantity)
                    .param("image","/image/QyBHYiMfYQ4XZFCqxEv0.jpg")
                    .param("uid",""+uid)
                    .accept(MediaType.APPLICATION_JSON))
                    .andDo(print())
                    .andExpect(status().isOk());
        }
        System.out.println("success");
    }

}