package com.NUAALH.handlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class login {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        System.out.printf("Login!\n");
        return "login";
    }
}
