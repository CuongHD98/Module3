package com.example.test.DAO;

import com.example.test.model.ClassRoom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClassDAO {
    private static final String SELECT_ALL_CLASS = "select * from class";
    private static final String SELECT_CLASS_BY_ID = "select * from class where id =?";
    private static final String SELECT_CLASS_BY_CLASSNAME = "select * from class where classRoom =?";
    Connection connection = ConnectMySQL.getConnection();

    public ClassDAO() {
    }
    public List<ClassRoom> selectAllClass() {
        List<ClassRoom> classList = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CLASS);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String classRoom = rs.getString("classRoom");
                classList.add(new ClassRoom(id, classRoom));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return classList;
    }
    public ClassRoom selectClasRoom(int id) {
        ClassRoom classRoom = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CLASS_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String classRoomN = rs.getString("classRoom");
                classRoom = new ClassRoom(id, classRoomN);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return classRoom;
    }
    public ClassRoom selectClasRoom(String classRoomN) {
        ClassRoom classRoom = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CLASS_BY_CLASSNAME);) {
            preparedStatement.setString(1, classRoomN);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                classRoom = new ClassRoom(id, classRoomN);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return classRoom;
    }


}
