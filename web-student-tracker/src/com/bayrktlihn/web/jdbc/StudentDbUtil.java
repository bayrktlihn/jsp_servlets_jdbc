package com.bayrktlihn.web.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class StudentDbUtil {
	private DataSource dataSource;

	public List<Student> getStudents() throws Exception {
		List<Student> students = new ArrayList<Student>();

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		try {
			myConn = dataSource.getConnection();

			String sql = "SELECT * FROM student ORDER BY last_name";

			myStmt = myConn.createStatement();

			myRs = myStmt.executeQuery(sql);

			while (myRs.next()) {

				int id = myRs.getInt("id");
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");

				Student student = new Student(id, firstName, lastName, email);

				students.add(student);
			}

		} finally {
			close(myConn, myStmt, myRs);
		}

		return students;

	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

		try {
			if (myRs != null)
				myRs.close();
			if (myStmt != null)
				myStmt.close();
			if (myConn != null)
				myConn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void addStudent(Student theStudent) throws Exception {
		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			String sql = "INSERT INTO student(first_name, last_name, email) values(?,?,?)";
			myConn = dataSource.getConnection();
			myStmt = myConn.prepareStatement(sql);

			myStmt.setString(1, theStudent.getFirstName());
			myStmt.setString(2, theStudent.getLastName());
			myStmt.setString(3, theStudent.getEmail());

			myStmt.executeUpdate();
		} finally {
			close(myConn, myStmt, null);
		}

	}

	public Student getStudent(int id) throws Exception {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		Student student = null;
		try {
			String sql = "SELECT * FROM student WHERE id = ?";
			myConn = dataSource.getConnection();

			myStmt = myConn.prepareStatement(sql);
			myStmt.setInt(1, id);

			myRs = myStmt.executeQuery();
			
			if(myRs.next()) {
				String firstName = myRs.getString("first_name");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");
				
				student = new Student(id,firstName, lastName, email);
			}
		} finally {
			close(myConn, myStmt, myRs);
		}
		return student;

	}

	public void updateStudent(Student student) throws Exception {
		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			String sql = "UPDATE student SET first_name=?, last_name = ?, email = ? WHERE id = ?";
			myConn = dataSource.getConnection();
			myStmt = myConn.prepareStatement(sql);

			myStmt.setString(1, student.getFirstName());
			myStmt.setString(2, student.getLastName());
			myStmt.setString(3, student.getEmail());
			myStmt.setInt(4, student.getId());

			myStmt.executeUpdate();
		} finally {
			close(myConn, myStmt, null);
		}
		
	}

	public void deleteStudent(int id) throws Exception {
		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			String sql = "DELETE FROM student WHERE id = ?";
			myConn = dataSource.getConnection();
			myStmt = myConn.prepareStatement(sql);

			myStmt.setInt(1, id);

			myStmt.executeUpdate();
		} finally {
			close(myConn, myStmt, null);
		}
	}

}
