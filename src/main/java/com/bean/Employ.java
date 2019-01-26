package com.bean;

import java.util.Date;

public class Employ {
    private Integer eyId;

    private String eyJob;

    private Date eyEndtime;

    private Integer eyNumber;

    private String eyRemark;

    private Integer eyStatus;

    private String eyOther1;

    private String eyOther2;

    public Integer getEyId() {
        return eyId;
    }

    public void setEyId(Integer eyId) {
        this.eyId = eyId;
    }

    public String getEyJob() {
        return eyJob;
    }

    public void setEyJob(String eyJob) {
        this.eyJob = eyJob == null ? null : eyJob.trim();
    }

    public Date getEyEndtime() {
        return eyEndtime;
    }

    public void setEyEndtime(Date eyEndtime) {
        this.eyEndtime = eyEndtime;
    }

    public Integer getEyNumber() {
        return eyNumber;
    }

    public void setEyNumber(Integer eyNumber) {
        this.eyNumber = eyNumber;
    }

    public String getEyRemark() {
        return eyRemark;
    }

    public void setEyRemark(String eyRemark) {
        this.eyRemark = eyRemark == null ? null : eyRemark.trim();
    }

    public Integer getEyStatus() {
        return eyStatus;
    }

    public void setEyStatus(Integer eyStatus) {
        this.eyStatus = eyStatus;
    }

    public String getEyOther1() {
        return eyOther1;
    }

    public void setEyOther1(String eyOther1) {
        this.eyOther1 = eyOther1 == null ? null : eyOther1.trim();
    }

    public String getEyOther2() {
        return eyOther2;
    }

    public void setEyOther2(String eyOther2) {
        this.eyOther2 = eyOther2 == null ? null : eyOther2.trim();
    }
}