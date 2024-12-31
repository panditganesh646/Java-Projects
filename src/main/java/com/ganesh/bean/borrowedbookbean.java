package com.ganesh.bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class borrowedbookbean implements Serializable {
    private String bcode;
    private String bname;
    private String bauthor;
    private double price;
    private int bqty;
    private java.sql.Date borrowDate;

   
    public borrowedbookbean() {
    }

    
    public String getBcode() {
        return bcode;
    }

    public void setBcode(String bcode) {
        this.bcode = bcode;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBauthor() {
        return bauthor;
    }

    public void setBauthor(String bauthor) {
        this.bauthor = bauthor;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getBqty() {
        return bqty;
    }

    public void setBqty(int bqty) {
        this.bqty = bqty;
    }

    public java.sql.Date getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(java.sql.Date borrowDate) {
        this.borrowDate = borrowDate;
    }
}
