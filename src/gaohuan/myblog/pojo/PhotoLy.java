package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class PhotoLy {
	private int lyid;
	public int getLyid() {
		return lyid;
	}
	public void setLyid(int lyid) {
		this.lyid = lyid;
	}
	public int getPhotoid() {
		return photoid;
	}
	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	private int photoid;
	private String username;
	private String text;
	private String mail;
	private Timestamp inputtime;
	private String reply;
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
}
