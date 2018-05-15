package com.NUAALH.database.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

@Entity
@Table(name = "notice", schema = "happypa_bbs")
public class NoticeEntity {
    private String title;
    private String message;
    private Date time;
    private String nickname;

    @Id
    @Column(name = "title")
    public String getTitle(){
        return title;
    }

    @Basic
    @Column(name = "message")
    public String getMessage(){
        return message;
    }

    @Basic
    @Column(name = "time")
    public Date getTime(){
        return time;
    }

    @Basic
    @Column(name = "usernickname")
    public String getNickname(){return nickname;}

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    @Override
    public boolean equals(Object obj) {
        if (this == obj)return true;
        if (obj == null || getClass() != obj.getClass())return false;
        NoticeEntity that = (NoticeEntity)obj;
        return  Objects.equals(time, that.time) &&
                Objects.equals(title, that.title) &&
                Objects.equals(message, that.message);


    }
    @Override
    public int hashCode(){
        return Objects.hash(title, time, message);
    }
}
