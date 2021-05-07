package com.nendrasys.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "PersonalDetailModel")
public class PersonalDetailModel {

    @Id
    @Column(name = "fullName")
    private String fullName;

    @Column(name = "countryName")
    private String countryName;

    @Column(name = "email")
    private String email;

    @Column(name = "contactNo")
    private String contactNo;

    @Column(name = "age")
    private Integer age;

    @Column(name = "date")
    private String date;

    @Column(name = "companyName")
    private String companyName;

    @Column(name = "requestQuantity")
    private Integer requestQuantity;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public Integer getRequestQuantity() {
        return requestQuantity;
    }

    public void setRequestQuantity(Integer requestQuantity) {
        this.requestQuantity = requestQuantity;
    }

    @Override
    public String toString() {
        return "PersonalDetailModel{" +
                "fullName='" + fullName + '\'' +
                ", countryName='" + countryName + '\'' +
                ", email='" + email + '\'' +
                ", contactNo='" + contactNo + '\'' +
                ", age=" + age +
                ", date='" + date + '\'' +
                ", companyName='" + companyName + '\'' +
                ", requestQuantity=" + requestQuantity +
                '}';
    }
}
