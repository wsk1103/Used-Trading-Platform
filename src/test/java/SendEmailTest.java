package com.wsk.controller;

import com.wsk.service.UserInformationService;
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
public class SendEmailTest {
    private MockMvc mockMvc;
    @Mock
    private UserInformationService userInformationService;
    @InjectMocks
    private SendEmail sendEmail;
    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockMvc = MockMvcBuilders.standaloneSetup(sendEmail).build();
    }

    @Test
    public void sendEmail() throws Exception {
        this.mockMvc.perform(post("/sendCode")
                .accept(MediaType.APPLICATION_JSON)
                .param("phone", "phone")
                .param("action", "1")
                .param("token","340"))
                .andDo(print()) //print request and response to Console
                .andExpect(status().isOk());
    }

}