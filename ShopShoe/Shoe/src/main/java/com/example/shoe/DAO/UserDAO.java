package com.example.shoe.DAO;

import com.example.shoe.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UserDAO implements IUserDAO {
    private static final String INSERT_USERS_SQL = "INSERT INTO users (name,gender,birthday,phone,address, email, password) VALUES (?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_USER_BY_ID = "select * from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,gender = ?,birthday = ?,phone = ?, address = ?,email= ?, password =? where id = ?;";

    public UserDAO() {
    }

    Connection connection = ConnectMySQL.getConnection();

    public void insertUser(User user) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getGender());
            preparedStatement.setString(3, user.getBirthday());
            preparedStatement.setString(3, user.getPhone());
            preparedStatement.setString(3, user.getAddress());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public User selectUser(int id) {
        User user = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String gender = rs.getString("gender");
                String birthday = rs.getString("birthday");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String password = rs.getString("password");
                user = new User(id, name, gender, birthday, phone, address, email, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String gender = rs.getString("gender");
                String birthday = rs.getString("birthday");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String password = rs.getString("password");
                users.add(new User(id, name, gender, birthday, phone, address, email, password));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getGender());
            statement.setString(3, user.getBirthday());
            statement.setString(3, user.getPhone());
            statement.setString(3, user.getAddress());
            statement.setString(3, user.getEmail());
            statement.setString(3, user.getPassword());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
