package com.bean;

import java.util.Date;

public class Industry {
    private Integer iyId;

    private String iyTitle;

    private String iyContent;

    private Integer iyUserid;

    private Integer iyState;

    private Date iyUpdatetime;

    private Integer iyStatus;

    private String iyOther1;

    private String iyOther2;

    public Integer getIyId() {
        return iyId;
    }

    public void setIyId(Integer iyId) {
        this.iyId = iyId;
    }

    public String getIyTitle() {
        return iyTitle;
    }

    public void setIyTitle(String iyTitle) {
        this.iyTitle = iyTitle == null ? null : iyTitle.trim();
    }

    public String getIyContent() {
        return iyContent;
    }

    public void setIyContent(String iyContent) {
        this.iyContent = iyContent == null ? null : iyContent.trim();
    }

    public Integer getIyUserid() {
        return iyUserid;
    }

    public void setIyUserid(Integer iyUserid) {
        this.iyUserid = iyUserid;
    }

    public Integer getIyState() {
        return iyState;
    }

    public void setIyState(Integer iyState) {
        this.iyState = iyState;
    }

    public Date getIyUpdatetime() {
        return iyUpdatetime;
    }

    public void setIyUpdatetime(Date iyUpdatetime) {
        this.iyUpdatetime = iyUpdatetime;
    }

    public Integer getIyStatus() {
        return iyStatus;
    }

    public void setIyStatus(Integer iyStatus) {
        this.iyStatus = iyStatus;
    }

    public String getIyOther1() {
        return iyOther1;
    }

    public void setIyOther1(String iyOther1) {
        this.iyOther1 = iyOther1 == null ? null : iyOther1.trim();
    }

    public String getIyOther2() {
        return iyOther2;
    }

    public void setIyOther2(String iyOther2) {
        this.iyOther2 = iyOther2 == null ? null : iyOther2.trim();
    }
}