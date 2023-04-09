package com.ty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ty.dao.StudentDao;
import com.ty.dto.Student;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	StudentDao studentDao;

	// save Students
	public int saveStudent(Student student) {
		int i= studentDao.saveStudent(student);
		return i;
	}

	@Override
	public Student getStudent(int id) {
		Student st=studentDao.getStudentById(id);
		return st;
	}

	@Override
	public List<Student> getAllStudent() {
		List list=studentDao.getAllStudent();
		return list;
	}

	@Override
	public int updateStudent(int id, Student student) {
		int i=studentDao.updateStudent(id, student);
		return i;
		
	}

	@Override
	public int deleteStudent(int id) {
		int i=studentDao.deleteStudentById(id);
		return i;
	}

}
