package com.spring.web.item;

import java.util.Date;

public class ItemVo {
	
	private int item_no;
	private String item_name;
	private int price;
	private String pd_date;
	private int capa;
	private String description;
	private String pd_org;
	private String sale_type;
	private String cate_name;
	private String img_name;
	private String big_img;
	
	public int getItem_no() {
		return item_no;
	}
	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPd_date() {
		return pd_date;
	}
	public void setPd_date(String pd_date) {
		this.pd_date = pd_date;
	}
	public int getCapa() {
		return capa;
	}
	public void setCapa(int capa) {
		this.capa = capa;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPd_org() {
		return pd_org;
	}
	public void setPd_org(String pd_org) {
		this.pd_org = pd_org;
	}
	public String getSale_type() {
		return sale_type;
	}
	public void setSale_type(String sale_type) {
		this.sale_type = sale_type;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getBig_img() {
		return big_img;
	}
	public void setBig_img(String big_img) {
		this.big_img = big_img;
	}
	
}
