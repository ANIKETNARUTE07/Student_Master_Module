package com.ty.service;

import java.util.List;


import com.ty.dto.Student;

public interface StudentService {

	public int saveStudent(Student student);
	
	public Student getStudent(int id);

	public List<Student> getAllStudent();

	public int updateStudent(int id,Student student);

	public int deleteStudent(int id);
	

}
