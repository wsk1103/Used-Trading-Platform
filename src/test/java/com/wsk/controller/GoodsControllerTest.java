package com.wsk.controller;

import com.wsk.service.*;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * Created by wsk1103 on 2017/5/24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class GoodsControllerTest {
    private MockMvc mockMvc;
    @InjectMocks
    private GoodsController goodsController;
    @Mock
    private ShopInformationService shopInformationService;
    @Mock
    private ShopContextService shopContextService;
    @Mock
    private UserInformationService userInformationService;
    @Mock
    private SpecificeService specificeService;
    @Mock
    private ClassificationService classificationService;
    @Mock
    private AllKindsService allKindsService;
    @Mock
    private UserWantService userWantService;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockMvc = MockMvcBuilders.standaloneSetup(goodsController).build();
    }


    @Test
    public void findByName() throws Exception {
        this.mockMvc.perform(post("/findShopByName").param("name","苹果")
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void requireMall() throws Exception {
        this.mockMvc.perform(post("/selectByCounts").param("counts","3")
                .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void selectByCounts() throws Exception {
    }

}