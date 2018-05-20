package com.NUAALH.controller;


import com.NUAALH.EncodingFilter;
import com.NUAALH.User;
import com.NUAALH.database.DbConnection;
import com.NUAALH.database.entities.NoticeEntity;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

@Controller
public class NoticeController implements EncodingFilter {
    @Override
    public String to_UTF8(String a) throws UnsupportedEncodingException {
        String aim = new String(a.getBytes("ISO-8859-1"),"UTF-8");
        return aim;
    }


    @RequestMapping(value = "/createnotice", method = RequestMethod.GET)
    public String createnotice(HttpSession session){
        User a = (User) session.getAttribute("theuser");
        if (a == null)return "loginplease";
        if (a.getUsertype() != 99)return "notadmin";
        return "createnotice";
    }


    @RequestMapping(value = "/makenotice", method = RequestMethod.POST)
    public String makenotice(ModelMap map, @RequestParam String title, @RequestParam String message, HttpSession httpSession) throws UnsupportedEncodingException {
        map.addAttribute("title", title);
        map.addAttribute("message", message);
        Session session = DbConnection.getSession();
//        List <NoticeEntity>list = session.createCriteria(NoticeEntity.class).list();
        Transaction transaction = session.beginTransaction();
//        System.out.println("写公告");

        //保存
        User a = (User)httpSession.getAttribute("theuser");
        NoticeEntity notice = new NoticeEntity();
        title = to_UTF8(title);
        message = to_UTF8(message);
        notice.setMessage(message);
        notice.setTitle(title);
        notice.setNickname(a.getNickname());
//        System.out.println("title:" + title);
//        System.out.println("message:" + message);
        Date now = new Date();
        notice.setTime(now);
        session.save(notice);
        //提交
        transaction.commit();
        session.close();

        return "successaddnotice";
    }

    @RequestMapping(value = "/noticelist", method = RequestMethod.GET)
    public String noticelist(ModelMap map, HttpSession session){
        User a = (User) session.getAttribute("theuser");
        if (a == null)
        {
            return "loginplease";
        }
        System.out.print("查看公告\n");
        Session sess = DbConnection.getSession();
        List<NoticeEntity> list = sess.createCriteria(NoticeEntity.class).addOrder(Order.desc("time")).list();
        map.addAttribute("notices",list);
        return "noticelist";
    }
}
