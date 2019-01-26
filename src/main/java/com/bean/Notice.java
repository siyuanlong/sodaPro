package com.bean;

import java.util.Date;

public class Notice {
    private Integer neId;

    private String neTitle;

    private String neContent;

    private Integer neLevel;

    private Date neUpdatetime;

    private Integer neUserid;

    private Integer neStatus;

    private String neOther1;

    private String neOther2;

    public Integer getNeId() {
        return neId;
    }

    public void setNeId(Integer neId) {
        this.neId = neId;
    }

    public String getNeTitle() {
        return neTitle;
    }

    public void setNeTitle(String neTitle) {
        this.neTitle = neTitle == null ? null : neTitle.trim();
    }

    public String getNeContent() {
        return neContent;
    }

    public void setNeContent(String neContent) {
        this.neContent = neContent == null ? null : neContent.trim();
    }

    public Integer getNeLevel() {
        return neLevel;
    }

    public void setNeLevel(Integer neLevel) {
        this.neLevel = neLevel;
    }

    public Date getNeUpdatetime() {
        return neUpdatetime;
    }

    public void setNeUpdatetime(Date neUpdatetime) {
        this.neUpdatetime = neUpdatetime;
    }

    public Integer getNeUserid() {
        return neUserid;
    }

    public void setNeUserid(Integer neUserid) {
        this.neUserid = neUserid;
    }

    public Integer getNeStatus() {
        return neStatus;
    }

    public void setNeStatus(Integer neStatus) {
        this.neStatus = neStatus;
    }

    public String getNeOther1() {
        return neOther1;
    }

    public void setNeOther1(String neOther1) {
        this.neOther1 = neOther1 == null ? null : neOther1.trim();
    }

    public String getNeOther2() {
        return neOther2;
    }

    public void setNeOther2(String neOther2) {
        this.neOther2 = neOther2 == null ? null : neOther2.trim();
    }
}