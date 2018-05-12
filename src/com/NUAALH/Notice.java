package com.NUAALH;

import java.util.Date;

public class Notice {
    private String title;
    private String message;
    private Date time;

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public void setMessage(String message) {
        this.message = message;
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
