package com.NUAALH.database.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "happypaers", schema = "happypa_bbs")
public class HappypaersEntity {
    private int id;
    private String username;
    private String nickname;
    private int usertpye;
    private String password;
    private int points;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "nickname")
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Basic
    @Column(name = "usertpye")
    public int getUsertpye() {
        return usertpye;
    }

    public void setUsertpye(int usertpye) {
        this.usertpye = usertpye;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "points")
    public int getPoints(){return  points;}
    public void setPoints(int points){this.points = points;}

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        HappypaersEntity that = (HappypaersEntity) o;
        return id == that.id &&
                usertpye == that.usertpye &&
                Objects.equals(username, that.username) &&
                Objects.equals(nickname, that.nickname) &&
                Objects.equals(password, that.password);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, username, nickname, usertpye, password);
    }
}
