package com.example.test.DAO;

import com.example.test.model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
    private static final String INSERT_STUDENT = "INSERT INTO students (name, email, dateOfBirth, address, phoneNumber, class_id) VALUES (?, ?, ?, ?, ?, ?);";
    private static final String SELECT_STUDENT_BY_ID = "select * from students where id =?";
    private static final String DELETE_STUDENT = "delete from students where id = ?;";
    private static final String UPDATE_STUDENT = "update students set name = ?,email= ?, dateOfBirth =?, address = ?, phoneNumber = ?, class_id = ? where id = ?;";
    Connection connection = ConnectMySQL.getConnection();

    public StudentDAO() {
    }
    public void insertStudent(Student student) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT)) {
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            String date = String.valueOf(student.getDateOfBirthday());
            preparedStatement.setString(3, date);
            preparedStatement.setString(4, student.getAddress());
            preparedStatement.setString(5, student.getPhoneNumber());
            preparedStatement.setInt(6, student.getClass_id());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public Student selectStudent(int id) {
        Student student = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                String address = rs.getString("address");
                String phoneNumber = rs.getString("phoneNumber");
                int class_id = rs.getInt("class_id");
                student = new Student(id, name, email, dateOfBirth, address, phoneNumber, class_id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }
    public boolean deleteStudent(int id) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = connection.prepareStatement(DELETE_STUDENT);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(Student student) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement statement = connection.prepareStatement(UPDATE_STUDENT);) {
            statement.setString(1, student.getName());
            statement.setString(2, student.getEmail());
            String date = String.valueOf(student.getDateOfBirthday());
            statement.setString(3, date);
            statement.setString(4, student.getAddress());
            statement.setString(5, student.getPhoneNumber());
            statement.setInt(6, student.getClass_id());
            statement.setInt(7, student.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
