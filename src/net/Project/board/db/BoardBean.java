package net.Project.board.db;

import java.sql.Date;

public class BoardBean {
	private int idx;
	private int no;
	private String subject;
	private Date reg_date;
	private int count;
	private String mem_id;
	private String ip;
	private int board_ca;
	private String img_file1;
	private String img_file2;
	private String contents;
	private int re_ref;
	private int	re_lev;
	private int re_seq;
	private Date update_date;
	private int board_status;
	private String board_email1;
	private String board_email2;
	private String board_delete;
	private String board_passwd;
	private String board_secret;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getBoard_ca() {
		return board_ca;
	}
	public void setBoard_ca(int board_ca) {
		this.board_ca = board_ca;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getBoard_status() {
		return board_status;
	}
	public void setBoard_status(int board_status) {
		this.board_status = board_status;
	}
	public String getBoard_email1() {
		return board_email1;
	}
	public void setBoard_email1(String board_email1) {
		this.board_email1 = board_email1;
	}
	public String getBoard_email2() {
		return board_email2;
	}
	public void setBoard_email2(String board_email2) {
		this.board_email2 = board_email2;
	}
	public String getBoard_delete() {
		return board_delete;
	}
	public void setBoard_delete(String board_delete) {
		this.board_delete = board_delete;
	}
	public String getBoard_passwd() {
		return board_passwd;
	}
	public void setBoard_passwd(String board_passwd) {
		this.board_passwd = board_passwd;
	}
	public String getBoard_secret() {
		return board_secret;
	}
	public void setBoard_secret(String board_secret) {
		this.board_secret = board_secret;
	}
		
}
