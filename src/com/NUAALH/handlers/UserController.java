package com.NUAALH.handlers;

import com.NUAALH.database.DbConnection;
import com.NUAALH.User;
import com.NUAALH.database.entities.HappypaersEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String ListUsers(ModelMap map){
        Session session = DbConnection.getSession();
        List <HappypaersEntity>list = session.createCriteria(HappypaersEntity.class).list();
        map.addAttribute("users",list);
        session.close();
        return "users";
    }

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(ModelMap map, @RequestParam String name, @RequestParam String password, @RequestParam String nickname){
        map.addAttribute("name",name);
        map.addAttribute("password",password);
        map.addAttribute("nickname",nickname);
        Session session = DbConnection.getSession();
        List <HappypaersEntity>list = session.createCriteria(HappypaersEntity.class).list();
        for(int i = 0; i < list.size(); i++) {
            if(name == list.get(i).getUsername());
            return "registererror";
        }
        Transaction transaction = session.beginTransaction();
        System.out.printf("注册");
        //保存
        HappypaersEntity ue = new HappypaersEntity();
        ue.setUsername(name);
        ue.setPassword(password);
        ue.setNickname(nickname);
        session.save(ue);
        //提交
        transaction.commit();
        session.close();

        return "regsuccess";
    }

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String result(ModelMap map, @RequestParam String name, @RequestParam String password,@RequestParam String nickname){
        System.out.printf("有提交");
        map.addAttribute("name", name);
        map.addAttribute("password",password);
        map.addAttribute("nickname",nickname);
        return "result";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.GET)
    public String reg(){
        return "register";
    }

    @RequestMapping(value = "/regsuccess",method = RequestMethod.GET)
    public String regsuccess(){
        return "regsuccess";
    }
}
