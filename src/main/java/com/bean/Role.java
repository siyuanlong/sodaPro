package com.bean;

public class Role {
    private Integer reId;

    private String reName;

    private Integer reState;

    private String reRemark;

    private Integer reStatus;

    private String reOther1;

    private String reOther2;

    public Integer getReId() {
        return reId;
    }

    public void setReId(Integer reId) {
        this.reId = reId;
    }

    public String getReName() {
        return reName;
    }

    public void setReName(String reName) {
        this.reName = reName == null ? null : reName.trim();
    }

    public Integer getReState() {
        return reState;
    }

    public void setReState(Integer reState) {
        this.reState = reState;
    }

    public String getReRemark() {
        return reRemark;
    }

    public void setReRemark(String reRemark) {
        this.reRemark = reRemark == null ? null : reRemark.trim();
    }

    public Integer getReStatus() {
        return reStatus;
    }

    public void setReStatus(Integer reStatus) {
        this.reStatus = reStatus;
    }

    public String getReOther1() {
        return reOther1;
    }

    public void setReOther1(String reOther1) {
        this.reOther1 = reOther1 == null ? null : reOther1.trim();
    }

    public String getReOther2() {
        return reOther2;
    }

    public void setReOther2(String reOther2) {
        this.reOther2 = reOther2 == null ? null : reOther2.trim();
    }
}