package com.bean;

import java.util.Date;

public class Contact {
    private Integer ctId;

    private String ctTitle;

    private String ctContent;

    private Integer ctUserid;

    private String ctPhone;

    private Date ctTime;

    private Integer ctStatus;

    private String ctOther;

    private String ctOther2;

    public Integer getCtId() {
        return ctId;
    }

    public void setCtId(Integer ctId) {
        this.ctId = ctId;
    }

    public String getCtTitle() {
        return ctTitle;
    }

    public void setCtTitle(String ctTitle) {
        this.ctTitle = ctTitle == null ? null : ctTitle.trim();
    }

    public String getCtContent() {
        return ctContent;
    }

    public void setCtContent(String ctContent) {
        this.ctContent = ctContent == null ? null : ctContent.trim();
    }

    public Integer getCtUserid() {
        return ctUserid;
    }

    public void setCtUserid(Integer ctUserid) {
        this.ctUserid = ctUserid;
    }

    public String getCtPhone() {
        return ctPhone;
    }

    public void setCtPhone(String ctPhone) {
        this.ctPhone = ctPhone == null ? null : ctPhone.trim();
    }

    public Date getCtTime() {
        return ctTime;
    }

    public void setCtTime(Date ctTime) {
        this.ctTime = ctTime;
    }

    public Integer getCtStatus() {
        return ctStatus;
    }

    public void setCtStatus(Integer ctStatus) {
        this.ctStatus = ctStatus;
    }

    public String getCtOther() {
        return ctOther;
    }

    public void setCtOther(String ctOther) {
        this.ctOther = ctOther == null ? null : ctOther.trim();
    }

    public String getCtOther2() {
        return ctOther2;
    }

    public void setCtOther2(String ctOther2) {
        this.ctOther2 = ctOther2 == null ? null : ctOther2.trim();
    }
}