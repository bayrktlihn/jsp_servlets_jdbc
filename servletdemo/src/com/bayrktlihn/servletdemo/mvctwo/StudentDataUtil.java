package com.bayrktlihn.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		List<Student> students = new ArrayList<Student>();
		
		students.add(new Student("alihan", "bayraktar", "alihanbayraktar@bayrktlihn.com"));
		students.add(new Student("ferhat", "aykan", "ferhataykan@bayrktlihn.com"));
		students.add(new Student("sadi evren", "seker", "sadievrenseker@bayrktlihn.com"));

		return students;
	}
}
