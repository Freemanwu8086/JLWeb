package com.freemanwu.entity;

import java.sql.Date;

public class Resume {
    private String name;
    private String sex;
    private String height;
    private String eduLevel;
    private String zzmm;
    private String familyAddress;
    private Date birthday;
    private String address;
    private String marriage;
    private String nationality;
    private String id;
    private String email;
    private String school;
    private Date graduTime;
    private String major;
    private String hobby;
    private String introduction;

    public Resume(String name, String sex, String height, String eduLevel, String zzmm, String familyAddress, Date birthday, String address, String marriage, String nationality, String id, String email, String school, Date graduTime, String major, String hobby, String introduction) {
        this.name = name;
        this.sex = sex;
        this.height = height;
        this.eduLevel = eduLevel;
        this.zzmm = zzmm;
        this.familyAddress = familyAddress;
        this.birthday = birthday;
        this.address = address;
        this.marriage = marriage;
        this.nationality = nationality;
        this.id = id;
        this.email = email;
        this.school = school;
        this.graduTime = graduTime;
        this.major = major;
        this.hobby = hobby;
        this.introduction = introduction;
    }

    public Resume() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getEduLevel() {
        return eduLevel;
    }

    public void setEduLevel(String eduLevel) {
        this.eduLevel = eduLevel;
    }

    public String getZzmm() {
        return zzmm;
    }

    public void setZzmm(String zzmm) {
        this.zzmm = zzmm;
    }

    public String getFamilyAddress() {
        return familyAddress;
    }

    public void setFamilyAddress(String familyAddress) {
        this.familyAddress = familyAddress;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public Date getGraduTime() {
        return graduTime;
    }

    public void setGraduTime(Date graduTime) {
        this.graduTime = graduTime;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", height='" + height + '\'' +
                ", eduLevel='" + eduLevel + '\'' +
                ", zzmm='" + zzmm + '\'' +
                ", familyAddress='" + familyAddress + '\'' +
                ", birthday=" + birthday +
                ", address='" + address + '\'' +
                ", marriage='" + marriage + '\'' +
                ", nationality='" + nationality + '\'' +
                ", id='" + id + '\'' +
                ", email='" + email + '\'' +
                ", school='" + school + '\'' +
                ", graduTime=" + graduTime +
                ", major='" + major + '\'' +
                ", hobby='" + hobby + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}
