package com.NUAALH;

import com.NUAALH.database.entities.UserEntity;

public class User{
    private int id;
    private String name;
    private String password;
    private String nickname = "PAer";
    private int usertype = 0;
    private int points = 0;

    public int getPoints() {
        return points;
    }

    public int getUsertype() {
        return usertype;
    }

    public void setPoints(int points){
        this.points = points;
    }
    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
    public User(int id,String name,String nickname, String password, int usertype){
        setId(id);
        setName(name);
        setNickname(nickname);
        setPassword(password);
        setUsertype(usertype);
    }

    public User(UserEntity happypaer){
        setId(happypaer.getId());
        setUsertype(happypaer.getUsertpye());
        setPassword(happypaer.getPassword());
        setNickname(happypaer.getNickname());
        setName(happypaer.getUsername());
        setPoints(happypaer.getPoints());
    }
    public User(){}
}
