package net.Project.admin.goods.db;

import java.sql.Timestamp;

public class GoodsBean {
	private int idx;
	private int goods_no;
	private int ca_no;
	private String goods_name;
	private int price;
	private int goods_amt;
	private String goods_comment;
	private String goods_color;
	private String goods_size;
	private String img_file1;
	private String img_file2;
	private Timestamp reg_date;
	private Timestamp update_date;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
	}
	public int getCa_no() {
		return ca_no;
	}
	public void setCa_no(int ca_no) {
		this.ca_no = ca_no;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getGoods_amt() {
		return goods_amt;
	}
	public void setGoods_amt(int goods_amt) {
		this.goods_amt = goods_amt;
	}
	public String getGoods_comment() {
		return goods_comment;
	}
	public void setGoods_comment(String goods_comment) {
		this.goods_comment = goods_comment;
	}
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public String getGoods_size() {
		return goods_size;
	}
	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}
	public String getImg_file1() {
		return img_file1;
	}
	public void setImg_file1(String img_file1) {
		this.img_file1 = img_file1;
	}
	public String getImg_file2() {
		return img_file2;
	}
	public void setImg_file2(String img_file2) {
		this.img_file2 = img_file2;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp regdate) {
		this.reg_date = regdate;
	}
	public Timestamp getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}
	
}
