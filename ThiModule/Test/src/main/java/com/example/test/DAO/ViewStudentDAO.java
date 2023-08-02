package com.example.test.DAO;

import com.example.test.model.Student;
import com.example.test.model.ViewStudent;

import javax.swing.text.View;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ViewStudentDAO {
    private static final String SELECT_VIEW_STUDENT_BY_ID = "select *\n" +
            "from students\n" +
            "inner join class on students.class_id = class.id where students.id = ?";
    private static final String SELECT_ALL_VIEW_STUDENT = "select students.id, students.name, students.email, students.dateOfBirth, \n" +
            "\t\tstudents.address, students.phoneNumber, class.classRoom\n" +
            "from students\n" +
            "inner join class on students.class_id = class.id;";
    private static final String SELECT_VIEW_STUDENT_BY_LIKE_NAME = "select *\n" +
            "from students\n" +
            "inner join class on students.class_id = class.id where students.name like ?; ";
    Connection connection = ConnectMySQL.getConnection();

    public ViewStudentDAO() {
    }
    public ViewStudent selectViewStudent(int id) {
        ViewStudent viewStudent = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VIEW_STUDENT_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                String address = rs.getString("address");
                String phoneNumber = rs.getString("phoneNumber");
                String classRoom = rs.getString("classRoom");
                viewStudent = new ViewStudent(id, name, email, dateOfBirth, address, phoneNumber, classRoom);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return viewStudent;
    }

    public List<ViewStudent> selectAllViewStudent() {
        List<ViewStudent> viewStudents = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_VIEW_STUDENT);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                String address = rs.getString("address");
                String phoneNumber = rs.getString("phoneNumber");
                String classRoom = rs.getString("classRoom");
                viewStudents.add(new ViewStudent(id, name, email, dateOfBirth, address, phoneNumber, classRoom));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return viewStudents;
    }




    public List<ViewStudent> selectUserByName(String nameLike) {
        List<ViewStudent> viewStudents = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VIEW_STUDENT_BY_LIKE_NAME);) {
            String like = "%" + nameLike + "%";
            System.out.println(like);
            preparedStatement.setString(1, like);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                String address = rs.getString("address");
                String phoneNumber = rs.getString("phoneNumber");
                String classRoom = rs.getString("classRoom");
                viewStudents.add(new ViewStudent(id, name, email, dateOfBirth, address, phoneNumber, classRoom));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return viewStudents;
    }
}
