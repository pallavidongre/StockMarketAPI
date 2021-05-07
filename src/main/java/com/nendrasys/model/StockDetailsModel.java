package com.nendrasys.model;

import javax.persistence.*;

@Entity
@Table(name = "STOCKDETAILS")
public class StockDetailsModel {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "COMPANYNAME")
    private String companyName;

    @Column(name = "PRICE")
    private Double price;

    @Column(name = "QTY")
    private Integer qty;

    @Column(name = "ReqQ")
    private Integer requestQuantity;

    public Integer getRequestQuantity() {
        return requestQuantity;
    }

    public void setRequestQuantity(Integer requestQuantity) {
        this.requestQuantity = requestQuantity;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getQty() {
        return qty;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }
}
