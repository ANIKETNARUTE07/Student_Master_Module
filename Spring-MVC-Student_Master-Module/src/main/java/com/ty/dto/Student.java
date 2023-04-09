package com.ty.dto;

import java.util.Date;

public class Student {

	private int id;
	private String Sname;
	private String State;
	private String City;
	private String Standard;
	private String DOB;
	private String Gender;
	private int TotalMarks;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSname() {
		return Sname;
	}

	public void setSname(String sname) {
		Sname = sname;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getStandard() {
		return Standard;
	}

	public void setStandard(String standard) {
		Standard = standard;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public int getTotalMarks() {
		return TotalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		TotalMarks = totalMarks;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", Sname=" + Sname + ", State=" + State + ", City=" + City + ", Standard="
				+ Standard + ", DOB=" + DOB + ", Gender=" + Gender + ", Total_Marks=" + TotalMarks + "]";
	}

}
