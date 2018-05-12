package com.NUAALH.handlers;

import com.NUAALH.EncodingFilter;
import com.NUAALH.User;
import com.NUAALH.UserLoginChecker;
import com.NUAALH.database.DbConnection;
import com.NUAALH.database.entities.HappypaersEntity;
import com.NUAALH.database.entities.NoticeEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

@Controller
@SessionAttributes("theuser")
public class UserController {
    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String ListUsers(ModelMap map){
        Session session = DbConnection.getSession();
        List <HappypaersEntity>list = session.createCriteria(HappypaersEntity.class).list();
        map.addAttribute("users",list);
        session.close();
        return "users";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(ModelMap map, @RequestParam String name, @RequestParam String password, @RequestParam String nickname) throws UnsupportedEncodingException {
        map.addAttribute("name",name);
        map.addAttribute("password",password);
        map.addAttribute("nickname",nickname);
        Session session = DbConnection.getSession();
        List <HappypaersEntity>list = session.createCriteria(HappypaersEntity.class).list();
        for(int i = 0; i < list.size(); i++) {
            if(name == list.get(i).getUsername()) return "registererror";
        }
        EncodingFilter ef = new EncodingFilter();
        name = ef.to_UTF8(name);
        nickname = ef.to_UTF8(nickname);
        Transaction transaction = session.beginTransaction();
        System.out.println("注册");
        System.out.println("用户名:"+name);
        System.out.println("昵称:"+nickname);
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
        System.out.println("有提交");
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


    @RequestMapping(value = "/createnotice", method = RequestMethod.GET)
    public String createnotice(){
        return "createnotice";
    }


    @RequestMapping(value = "/makenotice", method = RequestMethod.POST)
    public String makenotice(ModelMap map,@RequestParam String title,@RequestParam String message) throws UnsupportedEncodingException {
        map.addAttribute("title", title);
        map.addAttribute("message", message);
        Session session = DbConnection.getSession();
//        List <NoticeEntity>list = session.createCriteria(NoticeEntity.class).list();
        Transaction transaction = session.beginTransaction();
        System.out.println("写公告");

        //保存
        EncodingFilter ef = new EncodingFilter();
        NoticeEntity notice = new NoticeEntity();
        title = ef.to_UTF8(title);
        message = ef.to_UTF8(message);
        notice.setMessage(message);
        notice.setTitle(title);
        System.out.println("title:" + title);
        System.out.println("message:" + message);
        Date now = new Date();
        notice.setTime(now);
        session.save(notice);
        //提交
        transaction.commit();
        session.close();

        return "successaddnotice";
    }

    @RequestMapping(value = "/noticelist", method = RequestMethod.GET)
    public String noticelist(ModelMap map){
        System.out.print("查看公告\n");
        Session session = DbConnection.getSession();
        List <NoticeEntity>list = session.createCriteria(NoticeEntity.class).addOrder(Order.desc("time")).list();
        map.addAttribute("notices",list);
        return "noticelist";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }


    @RequestMapping(value = "/logincheck", method = RequestMethod.POST)
    public String login(ModelMap map, @RequestParam String username, @RequestParam String password, HttpServletRequest request){
        User theuser = null;
        System.out.println("校验用户名与密码");
        HttpSession session = request.getSession();
        UserLoginChecker checker = new UserLoginChecker(username, password);
        theuser = checker.result();
        session.setAttribute("theuser", theuser);
        //map.addAttribute("theuser", theuser);
        return "loginresult";
    }
}
