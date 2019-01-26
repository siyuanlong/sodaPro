package com.bean;

import java.util.Date;

public class News {
    private Integer nsId;

    private String nsTitle;

    private String nsContent;

    private Integer nsNumber;

    private Date nsShowtime;

    private Integer nsState;

    private Integer nsUserid;

    private Integer nsStatus;

    private String nsOther1;

    private String nsOther2;

    public Integer getNsId() {
        return nsId;
    }

    public void setNsId(Integer nsId) {
        this.nsId = nsId;
    }

    public String getNsTitle() {
        return nsTitle;
    }

    public void setNsTitle(String nsTitle) {
        this.nsTitle = nsTitle == null ? null : nsTitle.trim();
    }

    public String getNsContent() {
        return nsContent;
    }

    public void setNsContent(String nsContent) {
        this.nsContent = nsContent == null ? null : nsContent.trim();
    }

    public Integer getNsNumber() {
        return nsNumber;
    }

    public void setNsNumber(Integer nsNumber) {
        this.nsNumber = nsNumber;
    }

    public Date getNsShowtime() {
        return nsShowtime;
    }

    public void setNsShowtime(Date nsShowtime) {
        this.nsShowtime = nsShowtime;
    }

    public Integer getNsState() {
        return nsState;
    }

    public void setNsState(Integer nsState) {
        this.nsState = nsState;
    }

    public Integer getNsUserid() {
        return nsUserid;
    }

    public void setNsUserid(Integer nsUserid) {
        this.nsUserid = nsUserid;
    }

    public Integer getNsStatus() {
        return nsStatus;
    }

    public void setNsStatus(Integer nsStatus) {
        this.nsStatus = nsStatus;
    }

    public String getNsOther1() {
        return nsOther1;
    }

    public void setNsOther1(String nsOther1) {
        this.nsOther1 = nsOther1 == null ? null : nsOther1.trim();
    }

    public String getNsOther2() {
        return nsOther2;
    }

    public void setNsOther2(String nsOther2) {
        this.nsOther2 = nsOther2 == null ? null : nsOther2.trim();
    }
}