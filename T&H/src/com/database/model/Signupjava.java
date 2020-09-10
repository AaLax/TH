package com.database.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SignUp")
public class Signupjava {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "id") 
	private int ID;
	@Column(name="FirstName")
	private String fname;
	@Column(name="LastName")
	private String lname;
	@Column(name="Email")
	private String mail;
	@Column(name="MobileNo")
	private String mob;
	@Column(name="DOB")
	private String dob;
	@Column(name="PW")
	private String spw;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}

	
	public String getFname() {
		return fname;
	}
	
	public String getLname() {
		return lname;
	}

	
	public String getMail() {
		return mail;
	}
	
	public String getMob() {
		return mob;
	}
	
	public String getDob() {
		return dob;
	}
	
	public String getSpw() {
		return spw;
	}

	public void setFname(String fname) {
		this.fname = fname;
		
	}

	public void setLname(String lname) {
		this.lname = lname;
		
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setSpw(String spw) {
		this.spw = spw;
	}
	
//	@Override
//	public String toString() {
//		return "" + fname + ", " + lname + ", " + mail + ", " + mob + ", " + dob
//				+ ", " + spw + "";
//	}
}
