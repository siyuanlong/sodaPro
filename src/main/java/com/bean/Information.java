package com.bean;

import java.util.Date;

public class Information {
    private Integer inId;

    private String inTitle;

    private String inContent;

    private Integer inState;

    private Date inUpdatetime;

    private Integer inUserid;

    private Integer inStatus;

    private String inOther1;

    private String inOther2;

    public Integer getInId() {
        return inId;
    }

    public void setInId(Integer inId) {
        this.inId = inId;
    }

    public String getInTitle() {
        return inTitle;
    }

    public void setInTitle(String inTitle) {
        this.inTitle = inTitle == null ? null : inTitle.trim();
    }

    public String getInContent() {
        return inContent;
    }

    public void setInContent(String inContent) {
        this.inContent = inContent == null ? null : inContent.trim();
    }

    public Integer getInState() {
        return inState;
    }

    public void setInState(Integer inState) {
        this.inState = inState;
    }

    public Date getInUpdatetime() {
        return inUpdatetime;
    }

    public void setInUpdatetime(Date inUpdatetime) {
        this.inUpdatetime = inUpdatetime;
    }

    public Integer getInUserid() {
        return inUserid;
    }

    public void setInUserid(Integer inUserid) {
        this.inUserid = inUserid;
    }

    public Integer getInStatus() {
        return inStatus;
    }

    public void setInStatus(Integer inStatus) {
        this.inStatus = inStatus;
    }

    public String getInOther1() {
        return inOther1;
    }

    public void setInOther1(String inOther1) {
        this.inOther1 = inOther1 == null ? null : inOther1.trim();
    }

    public String getInOther2() {
        return inOther2;
    }

    public void setInOther2(String inOther2) {
        this.inOther2 = inOther2 == null ? null : inOther2.trim();
    }
}