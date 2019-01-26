package com.bean;

import java.util.Date;

public class Course {
    private Integer ceId;

    private String ceName;

    private String ceAddress;

    private Integer ceType;

    private Integer ceState;

    private Integer ceUserid;

    private Double ceMoney;

    private Date ceOpentime;

    private Date ceEndtime;

    private String ceVideo;

    private Integer ceStatus;

    private String ceEasy;

    private Integer cePhone;

    //司_用于查询所有课程信息
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCeId() {
        return ceId;
    }

    public void setCeId(Integer ceId) {
        this.ceId = ceId;
    }

    public String getCeName() {
        return ceName;
    }

    public void setCeName(String ceName) {
        this.ceName = ceName == null ? null : ceName.trim();
    }

    public String getCeAddress() {
        return ceAddress;
    }

    public void setCeAddress(String ceAddress) {
        this.ceAddress = ceAddress == null ? null : ceAddress.trim();
    }

    public Integer getCeType() {
        return ceType;
    }

    public void setCeType(Integer ceType) {
        this.ceType = ceType;
    }

    public Integer getCeState() {
        return ceState;
    }

    public void setCeState(Integer ceState) {
        this.ceState = ceState;
    }

    public Integer getCeUserid() {
        return ceUserid;
    }

    public void setCeUserid(Integer ceUserid) {
        this.ceUserid = ceUserid;
    }

    public Double getCeMoney() {
        return ceMoney;
    }

    public void setCeMoney(Double ceMoney) {
        this.ceMoney = ceMoney;
    }

    public Date getCeOpentime() {
        return ceOpentime;
    }

    public void setCeOpentime(Date ceOpentime) {
        this.ceOpentime = ceOpentime;
    }

    public Date getCeEndtime() {
        return ceEndtime;
    }

    public void setCeEndtime(Date ceEndtime) {
        this.ceEndtime = ceEndtime;
    }

    public String getCeVideo() {
        return ceVideo;
    }

    public void setCeVideo(String ceVideo) {
        this.ceVideo = ceVideo == null ? null : ceVideo.trim();
    }

    public Integer getCeStatus() {
        return ceStatus;
    }

    public void setCeStatus(Integer ceStatus) {
        this.ceStatus = ceStatus;
    }

    public String getCeEasy() {
        return ceEasy;
    }

    public void setCeEasy(String ceEasy) {
        this.ceEasy = ceEasy == null ? null : ceEasy.trim();
    }

    public Integer getCePhone() {
        return cePhone;
    }

    public void setCePhone(Integer cePhone) {
        this.cePhone = cePhone;
    }
}