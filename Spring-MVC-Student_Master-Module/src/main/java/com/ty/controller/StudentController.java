package com.ty.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dto.Student;
import com.ty.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/studentload")
	public ModelAndView loadMe() {
		ModelAndView modelAndView = new ModelAndView("createstudent.jsp");
		modelAndView.addObject("student1", new Student());
		return modelAndView;
	}

	@RequestMapping("/studentsave")
	public String saveStudent(@ModelAttribute Student student) {
		studentService.saveStudent(student);
		return "redirect:/viewallstudents";
	}

	@RequestMapping("/viewallstudents")
	public ModelAndView getAllStudents() {
		List<Student> students = studentService.getAllStudent();

		ModelAndView modelAndView = new ModelAndView("homepage.jsp");
		modelAndView.addObject("students1", students);
		return modelAndView;
	}

	// Edit student
	@RequestMapping("/editstudents")
	public ModelAndView editStudent(@RequestParam(name = "id") int id, ModelAndView modelAndView) {
		Student student = studentService.getStudent(id);
		modelAndView.addObject("student", student);
		modelAndView.setViewName("editstudent.jsp");
		return modelAndView;
	}

	// Update Student
	@RequestMapping("/updatestudents")
	public ModelAndView updateStudent(@ModelAttribute Student student, ModelAndView modelAndView) {
		studentService.updateStudent(student.getId(), student);
		modelAndView.setViewName("allstudents.jsp");
		modelAndView.addObject("students1", studentService.getAllStudent());
		return modelAndView;
	}

	// Delete Student
	@RequestMapping("/deletestudents")
	public String deleteStudent(@RequestParam(name = "id") int id, ModelAndView modelAndView) {
		int student = studentService.deleteStudent(id);
		modelAndView.addObject("studentsdel", student);
		modelAndView.setViewName("deletestudent.jsp");
		return "redirect:/viewallstudents";
	}

}
