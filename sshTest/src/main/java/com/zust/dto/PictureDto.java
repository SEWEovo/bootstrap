package com.zust.dto;

import java.util.Date;

public class PictureDto {
    private int id;
    private String name;
    private String fname;
    private int userId;
    private String intro;
    private String tags;
    private Date uploadTime;
    private int clickNum;
    private String userName;

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

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public int getClickNum() {
        return clickNum;
    }

    public void setClickNum(int clickNum) {
        this.clickNum = clickNum;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public PictureDto(int id, String name, String fname, int userId, String intro, String tags, Date uploadTime, int clickNum, String userName){
        this.id=id;
        this.name=name;
        this.fname=fname;
        this.userId=userId;
        this.intro=intro;
        this.tags=tags;
        this.uploadTime=uploadTime;
        this.clickNum=clickNum;
        this.userName=userName;
    }
}
