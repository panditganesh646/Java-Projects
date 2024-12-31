package com.ganesh.bean;

import java.io.Serializable;
@SuppressWarnings("serial")
public class BookBean implements Serializable{
	 private String bcode;
	 private String bname;
	 private String bAuthor;
	 private double price;
	 private int bqty;
	 public BookBean() {
		   
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
	public String getbAuthor() {
		return bAuthor;
	}
	public void setbAuthor(String bAuthor) {
		this.bAuthor = bAuthor;
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
}
