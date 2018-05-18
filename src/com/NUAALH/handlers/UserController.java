package com.NUAALH.handlers;

import com.NUAALH.EncodingFilter;
import com.NUAALH.Observer;
import com.NUAALH.User;
import com.NUAALH.UserLoginChecker;
import com.NUAALH.database.DbConnection;
import com.NUAALH.database.entities.HappypaersEntity;
import com.NUAALH.database.entities.NoticeEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
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
public class UserController implements EncodingFilter,Observer {
    @Override
    public String to_UTF8(String a) throws UnsupportedEncodingException {
        String aim = new String(a.getBytes("ISO-8859-1"),"UTF-8");
        return aim;
    }

    @Override
    public void AddpointsEvent(int points) {
        Session session = DbConnection.getSession();
        Transaction ts = session.beginTransaction();
        List<HappypaersEntity> list = session.createCriteria(HappypaersEntity.class).list();
        for (int i = 0; i < list.size(); i++) {
            list.get(i).addpoints(points);
            session.update(list.get(i));
        }
        NoticeEntity a = new NoticeEntity();
        Date d = new Date();
        a.setNickname("system");
        a.setTitle("全体注册用户发放积分福利");
        a.setMessage("全体发放"+points+"积分福利");
        a.setTime(d);
        session.save(a);
        ts.commit();
        session.close();
    }

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
        name = to_UTF8(name);
        nickname = to_UTF8(nickname);
        Transaction transaction = session.beginTransaction();
//        System.out.println("注册");
//        System.out.println("用户名:"+name);
//        System.out.println("昵称:"+nickname);
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
//        System.out.println("有提交");
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


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }


    @RequestMapping(value = "/logincheck", method = RequestMethod.POST)
    public String login(ModelMap map, @RequestParam String username, @RequestParam String password, HttpServletRequest request){
        User theuser = null;
//        System.out.println("校验用户名与密码");
        HttpSession session = request.getSession();
        UserLoginChecker checker = new UserLoginChecker(username, password);
        theuser = checker.result();
        session.setAttribute("theuser", theuser);
        //map.addAttribute("theuser", theuser);
        if(theuser == null)return "loginfali";
        return "loginsuccess";
    }


    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String mainpage(ModelMap map, HttpSession session){
        String username;
        String nickname;
        int points;
        User a = (User)session.getAttribute("theuser");
        if(a == null)return "login";
        username = a.getName();
        nickname = a.getNickname();
        points = a.getPoints();
        map.addAttribute("username",username);
        map.addAttribute("nickname",nickname);
        map.addAttribute("points", points);
        return "main";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(){
        return "logout";
    }

    @RequestMapping(value = "/addpoints", method = RequestMethod.POST)
    public String addpoints(ModelMap map,@RequestParam int points){
        AddpointsEvent(points);
        map.addAttribute("points", points);
        return "addpointssuccess";
    }
}
