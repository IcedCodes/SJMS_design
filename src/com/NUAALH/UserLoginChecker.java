package com.NUAALH;

import com.NUAALH.User;
import com.NUAALH.database.DbConnection;
import com.NUAALH.database.entities.HappypaersEntity;
import org.hibernate.Session;

import java.util.List;

public class UserLoginChecker {
    User user;
    public void check(String name, String password){
        System.out.println("传入checker的参数");
        System.out.println("用户名"+name);
        System.out.println("密码" + password);
        Session session = DbConnection.getSession();
        List<HappypaersEntity> list = session.createCriteria(HappypaersEntity.class).list();
        for(int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).getUsername());
//            System.out.println(list.get(i).getPassword());
//            System.out.println((name == list.get(i).getUsername()));
//            System.out.println((password == list.get(i).getPassword()));
            if((name.equals(list.get(i).getUsername())) && (password.equals(list.get(i).getPassword())) )
            {
                this.user = new User(list.get(i));
                System.out.println("匹配成功");
            }
        }
    }

    public UserLoginChecker(String name, String password){
        check(name, password);
    }

    public User result(){
        return user;
    }
}
