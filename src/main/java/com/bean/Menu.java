package com.bean;

public class Menu {
    private Integer muId;

    private Integer muPid;

    private String muName;

    private String muUrl;

    private String muRemark;

    private Integer muState;

    private Integer muStatus;

    private String muOther1;

    private String muOther2;

    public Integer getMuId() {
        return muId;
    }

    public void setMuId(Integer muId) {
        this.muId = muId;
    }

    public Integer getMuPid() {
        return muPid;
    }

    public void setMuPid(Integer muPid) {
        this.muPid = muPid;
    }

    public String getMuName() {
        return muName;
    }

    public void setMuName(String muName) {
        this.muName = muName == null ? null : muName.trim();
    }

    public String getMuUrl() {
        return muUrl;
    }

    public void setMuUrl(String muUrl) {
        this.muUrl = muUrl == null ? null : muUrl.trim();
    }

    public String getMuRemark() {
        return muRemark;
    }

    public void setMuRemark(String muRemark) {
        this.muRemark = muRemark == null ? null : muRemark.trim();
    }

    public Integer getMuState() {
        return muState;
    }

    public void setMuState(Integer muState) {
        this.muState = muState;
    }

    public Integer getMuStatus() {
        return muStatus;
    }

    public void setMuStatus(Integer muStatus) {
        this.muStatus = muStatus;
    }

    public String getMuOther1() {
        return muOther1;
    }

    public void setMuOther1(String muOther1) {
        this.muOther1 = muOther1 == null ? null : muOther1.trim();
    }

    public String getMuOther2() {
        return muOther2;
    }

    public void setMuOther2(String muOther2) {
        this.muOther2 = muOther2 == null ? null : muOther2.trim();
    }
}