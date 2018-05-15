package com.NUAALH;

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
}
