package net.Project.board.db;

import java.sql.Date;

import oracle.sql.DATE;

public class boardQnaBean {
	
	private int no;
	private int idx;
	private int board_num;
	private String subject;
	private Date reg_date;
	private int count;
	private String mem_id;
	private String ip;
	private int board_ca;
	private String img_file1;
	private String contents;
	private int re_ref;
	private int	re_lev;
	private int re_seq;
	private DATE update_date;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
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
	public DATE getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(DATE update_date) {
		this.update_date = update_date;
	}
	
	

}
