package com.bean;

public class User {
    private Integer urId;

    private String urName;

    private String urLoginname;

    private String urPassword;

    private String urIdcard;

    private String urPhone;

    private Integer urSex;

    private String urAddress;

    private String urEmail;

    private Integer urState;

    private Integer urRoleid;

    private Integer urStatus;

    private String urOther1;

    private String urOther2;

    //司_用于查询所有课程信息
    private Role role;

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getUrId() {
        return urId;
    }

    public void setUrId(Integer urId) {
        this.urId = urId;
    }

    public String getUrName() {
        return urName;
    }

    public void setUrName(String urName) {
        this.urName = urName == null ? null : urName.trim();
    }

    public String getUrLoginname() {
        return urLoginname;
    }

    public void setUrLoginname(String urLoginname) {
        this.urLoginname = urLoginname == null ? null : urLoginname.trim();
    }

    public String getUrPassword() {
        return urPassword;
    }

    public void setUrPassword(String urPassword) {
        this.urPassword = urPassword == null ? null : urPassword.trim();
    }

    public String getUrIdcard() {
        return urIdcard;
    }

    public void setUrIdcard(String urIdcard) {
        this.urIdcard = urIdcard == null ? null : urIdcard.trim();
    }

    public String getUrPhone() {
        return urPhone;
    }

    public void setUrPhone(String urPhone) {
        this.urPhone = urPhone == null ? null : urPhone.trim();
    }

    public Integer getUrSex() {
        return urSex;
    }

    public void setUrSex(Integer urSex) {
        this.urSex = urSex;
    }

    public String getUrAddress() {
        return urAddress;
    }

    public void setUrAddress(String urAddress) {
        this.urAddress = urAddress == null ? null : urAddress.trim();
    }

    public String getUrEmail() {
        return urEmail;
    }

    public void setUrEmail(String urEmail) {
        this.urEmail = urEmail == null ? null : urEmail.trim();
    }

    public Integer getUrState() {
        return urState;
    }

    public void setUrState(Integer urState) {
        this.urState = urState;
    }

    public Integer getUrRoleid() {
        return urRoleid;
    }

    public void setUrRoleid(Integer urRoleid) {
        this.urRoleid = urRoleid;
    }

    public Integer getUrStatus() {
        return urStatus;
    }

    public void setUrStatus(Integer urStatus) {
        this.urStatus = urStatus;
    }

    public String getUrOther1() {
        return urOther1;
    }

    public void setUrOther1(String urOther1) {
        this.urOther1 = urOther1 == null ? null : urOther1.trim();
    }

    public String getUrOther2() {
        return urOther2;
    }

    public void setUrOther2(String urOther2) {
        this.urOther2 = urOther2 == null ? null : urOther2.trim();
    }
}