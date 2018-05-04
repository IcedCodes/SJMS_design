package com.NUAALH.handlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class hello {
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello(){
        System.out.print("hello\n");
        return "hello";
    }
}
