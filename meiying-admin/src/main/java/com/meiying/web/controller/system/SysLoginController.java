package com.meiying.web.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 系统登陆controller
 */
@Controller
@RequestMapping("/sys/login")
public class SysLoginController {
    @GetMapping("/")
    public ModelAndView login(){
       ModelAndView modelAndView=new ModelAndView("login");
       return modelAndView;
    }
}
