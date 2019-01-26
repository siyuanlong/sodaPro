package com.bean;

public class Survey {
    private Integer syId;

    private String syTitle;

    private String syContent;

    private Integer syUserid;

    private Integer syType;

    private Integer syStatus;

    private String syOther1;

    private String syOther2;

    public Integer getSyId() {
        return syId;
    }

    public void setSyId(Integer syId) {
        this.syId = syId;
    }

    public String getSyTitle() {
        return syTitle;
    }

    public void setSyTitle(String syTitle) {
        this.syTitle = syTitle == null ? null : syTitle.trim();
    }

    public String getSyContent() {
        return syContent;
    }

    public void setSyContent(String syContent) {
        this.syContent = syContent == null ? null : syContent.trim();
    }

    public Integer getSyUserid() {
        return syUserid;
    }

    public void setSyUserid(Integer syUserid) {
        this.syUserid = syUserid;
    }

    public Integer getSyType() {
        return syType;
    }

    public void setSyType(Integer syType) {
        this.syType = syType;
    }

    public Integer getSyStatus() {
        return syStatus;
    }

    public void setSyStatus(Integer syStatus) {
        this.syStatus = syStatus;
    }

    public String getSyOther1() {
        return syOther1;
    }

    public void setSyOther1(String syOther1) {
        this.syOther1 = syOther1 == null ? null : syOther1.trim();
    }

    public String getSyOther2() {
        return syOther2;
    }

    public void setSyOther2(String syOther2) {
        this.syOther2 = syOther2 == null ? null : syOther2.trim();
    }
}