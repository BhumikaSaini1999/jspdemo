package com.luv2code.servletdemo.mvc;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		// create an empty list
		List<Student> students = new ArrayList<>();

		// add sample data
		students.add(new Student("Bhumika", "Saini", "bhumikasaini189@gmail.com"));
		students.add(new Student("Shivani", "Singla", "shivani567@gmail.com"));
		students.add(new Student("Garima", "Issar", "garima876@gmail.com"));

		// return the list
		return students;
	}
}
