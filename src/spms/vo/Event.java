package spms.vo;

import java.sql.Date;

public class Event {
	protected int no;
	protected String location;
	protected String class_name;
	protected String time;
	protected int personal;
	protected Date date;
	
	public int getNo() {
		return no;
	}
	public Event setNo(int no) {
		this.no = no;
		return this;
	}
	public String getLocation() {
		return location;
	}
	public Event setLocation(String location) {
		this.location = location;
		return this;
	}
	public String getClass_name() {
		return class_name;
	}
	public Event setClass_name(String class_name) {
		this.class_name = class_name;
		return this;
	}
	public String getTime() {
		return time;
	}
	public Event setTime(String time) {
		this.time = time;
		return this;
	}
	public int getPersonal() {
		return personal;
	}
	public Event setPersonal(int personal) {
		this.personal = personal;
		return this;
	}
	public Date getDate() {
		return date;
	}
	public Event setDate(Date date) {
		this.date = date;
		return this;
	}
	
	
	
	
	
	
	
}
