package com.ali.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ali.main.model.Student;
import com.ali.main.repository.StudentRepository;

@Controller
public class StudController {
	
	@Autowired
	StudentRepository studentRe;
	
	@RequestMapping("/")
	public String homepage(Model mod) {
		List<Student> stud = studentRe.findAll();
		mod.addAttribute("StudentList", stud);
		return "displayStudentInfo.jsp";
	}
	
	@RequestMapping("add")
	public String add(Model m){
		Student s = new Student();
		m.addAttribute("Student", s);
		return "enterStudentInfo.jsp";
	}
	
	@RequestMapping("addStudent")
	public String saveStudent(@ModelAttribute Student s,Model m) {	
		studentRe.save(s);
//		List<Student> list = studentRe.findAll();
//		m.addAttribute("Student", list);
		return "redirect:/";
	}
	
	@RequestMapping("delete/{studentId}")
	public String deleteStudent(@PathVariable int studentId) {	
		System.out.println(studentId);
		studentRe.deleteById(studentId);
		return "redirect:/";
	}
	
	@RequestMapping("{studentId}")
	public String updateStudent(@PathVariable int studentId, Model m) {	
		Student s = studentRe.getOne(studentId);
		m.addAttribute("Student",s);
		return "editStudentInfo.jsp";
	}
}
