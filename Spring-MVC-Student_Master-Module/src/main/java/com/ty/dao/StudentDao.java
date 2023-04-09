package com.ty.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.ty.dto.Student;

@Repository
public class StudentDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int saveStudent(Student student) {
		String sql = "insert into student( name,state,city,standard,dob,gender,totalMarks) values(?,?,?,?,?,?,?)";
		int s = jdbcTemplate.update(sql, student.getSname(), student.getState(), student.getCity(),
				student.getStandard(), student.getDOB(), student.getGender(), student.getTotalMarks());
		return s;
	}

	// get Student By Id
	public Student getStudentById(int id) {
		String sql = "select * from student where id=?";

		RowMapper rowMapper = new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student st = new Student();
				st.setId(rs.getInt(1));
				st.setSname(rs.getString(2));
				st.setState(rs.getString(3));
				st.setCity(rs.getString(4));
				st.setStandard(rs.getString(5));
				st.setDOB(rs.getString(6));
				st.setGender(rs.getString(7));
				st.setTotalMarks(rs.getInt(8));
				return st;
			}
		};
		Student st = jdbcTemplate.queryForObject(sql, rowMapper, id);
		return st;

	};

	// get All Student
	public List<Student> getAllStudent() {
		String sql = "select * from student ";
		RowMapper rowMapper = new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student st = new Student();
				st.setId(rs.getInt(1));
				st.setSname(rs.getString(2));
				st.setState(rs.getString(3));
				st.setCity(rs.getString(4));
				st.setStandard(rs.getString(5));
				st.setDOB(rs.getString(6));
				st.setGender(rs.getString(7));
				st.setTotalMarks(rs.getInt(8));
				return st;
			}
		};
		List list = jdbcTemplate.query(sql, rowMapper);
		return list;

	}

	// Delete Student By Id
	public int deleteStudentById(int id) {
		String sql = "delete from student where id=?";
		int i = jdbcTemplate.update(sql, id);
		return i;

	}

	// update Student By Id
	public int updateStudent(int id, Student student) {
		try {
			String sql = "UPDATE student SET name=?, state=?, city=?, standard=?, dob=?, gender=?, totalmarks=? WHERE id=?";
			int result = jdbcTemplate.update(sql, student.getSname(), student.getState(), student.getCity(),
					student.getStandard(), student.getDOB(), student.getGender(), student.getTotalMarks(), id);
			if (result == 1) {
				System.out.println("Successfully updated student record with ID: " + id);
			} else {
				System.out.println("No rows were updated for student record with ID: " + id);
			}
			return result;
		} catch (Exception e) {
			System.err.println("Error updating student record with ID: " + id);
			e.printStackTrace();
			return 0;
		}
	}
}
