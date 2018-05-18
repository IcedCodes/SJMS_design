package com.NUAALH;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;
import java.util.Date;

public class Notice {
    private String title;
    private String message;
    private Date time;
    private String nickname;
    public void setTitle(String title) {
        this.title = title;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNickname() {
        return nickname;
    }

    public Date getTime() {
        return time;
    }

    public String getMessage() {
        return message;
    }

    public String getTitle() {
        return title;
    }
    public Notice(){};

    public void addNotice(int points){

    }
}
