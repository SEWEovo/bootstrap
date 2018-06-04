package com.zust.dto;

public class UserDto {
    private int id;
    private String name;
    private String username;
    private String province;
    private String city;
    private String gender;
    private String intro;
    private int pictureNum;
    private int concernedNum;
    private int concernerNum;
    private int state;
    private String picId1;
    private String picId2;
    private String picId3;
    private String picId4;

    public String getPicId1() {
        return picId1;
    }

    public void setPicId1(String picId1) {
        this.picId1 = picId1;
    }

    public String getPicId2() {
        return picId2;
    }

    public void setPicId2(String picId2) {
        this.picId2 = picId2;
    }

    public String getPicId3() {
        return picId3;
    }

    public void setPicId3(String picId3) {
        this.picId3 = picId3;
    }

    public String getPicId4() {
        return picId4;
    }

    public void setPicId4(String picId4) {
        this.picId4 = picId4;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getState() {
        return state;
    }
    public void setState(int state) {
        this.state = state;
    }
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
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public int getPictureNum() {
        return pictureNum;
    }
    public void setPictureNum(int pictureNum) {
        this.pictureNum = pictureNum;
    }
    public int getConcernedNum() {
        return concernedNum;
    }
    public void setConcernedNum(int concernedNum) {
        this.concernedNum = concernedNum;
    }
    public int getConcernerNum() {
        return concernerNum;
    }
    public void setConcernerNum(int concernerNum) {
        this.concernerNum = concernerNum;
    }


    public UserDto(int id,String name,String username,String province,String city,String gender,String intro){
        this.id=id;
        this.name=name;
        this.username=username;
        this.province=province;
        this.city=city;
        this.gender=gender;
        this.intro=intro;
    }
}
