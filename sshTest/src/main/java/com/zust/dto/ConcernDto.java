package com.zust.dto;

import java.util.Date;

public class ConcernDto {
    private int erId;
    private int concernerId;
    private int edId;
    private int concernedId;
    private String edName;
    private int picId;
    private String picName;
    private String picFname;
    private Date picUploadTime;
    private String tags;
    public String getTags() {
        return tags;
    }
    public void setTags(String tags) {
        this.tags = tags;
    }

    public int getErId() {
        return erId;
    }

    public void setErId(int erId) {
        this.erId = erId;
    }

    public int getConcernerId() {
        return concernerId;
    }

    public void setConcernerId(int concernerId) {
        this.concernerId = concernerId;
    }

    public int getEdId() {
        return edId;
    }

    public void setEdId(int edId) {
        this.edId = edId;
    }

    public int getConcernedId() {
        return concernedId;
    }

    public void setConcernedId(int concernedId) {
        this.concernedId = concernedId;
    }

    public String getEdName() {
        return edName;
    }

    public void setEdName(String edName) {
        this.edName = edName;
    }

    public int getPicId() {
        return picId;
    }

    public void setPicId(int picId) {
        this.picId = picId;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public String getPicFname() {
        return picFname;
    }

    public void setPicFname(String picFname) {
        this.picFname = picFname;
    }

    public Date getPicUploadTime() {
        return picUploadTime;
    }

    public void setPicUploadTime(Date picUploadTime) {
        this.picUploadTime = picUploadTime;
    }

    public ConcernDto(int erId, int concernerId, int edId, int concernedId, String edName, int picId, String picName, Date picUploadTime, String picFname, String tags){
        this.erId=erId;
        this.concernerId=concernerId;
        this.edId=edId;
        this.concernedId=concernedId;
        this.edName=edName;
        this.picId=picId;
        this.picName=picName;
        this.picUploadTime=picUploadTime;
        this.picFname=picFname;
        this.tags=tags;
    }
}
