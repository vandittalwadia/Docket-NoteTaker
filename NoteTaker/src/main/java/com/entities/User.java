package com.entities;

import java.util.*;
import java.sql.*;
public class User {
    private int id;
    private String name;
    private String mobile;
    private String password;
    private String email;
    private String gender;
    private String medium;
    private Timestamp time;
    private String profile;

    public User(int id, String name, String mobile, String password, String email, String gender, String medium, Timestamp time) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.password = password;
        this.email = email;
        this.gender = gender;
        this.medium = medium;
        this.time = time;
    }

    public User() {
    }

    public User(String name, String mobile, String password, String email, String gender, String medium) {
        this.name = name;
        this.mobile = mobile;
        this.password = password;
        this.email = email;
        this.gender = gender;
        this.medium = medium;
        //this.time = time;
    }
    
    
    //getters setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    
    
}
