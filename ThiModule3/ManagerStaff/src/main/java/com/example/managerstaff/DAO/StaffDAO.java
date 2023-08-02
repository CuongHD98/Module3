package com.example.managerstaff.DAO;

import com.example.managerstaff.model.Staff;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StaffDAO {
    private static final String INSERT_STAFF = "INSERT INTO staffs (name, email, salary, department_id) VALUES (?, ?, ?, ?);";
    private static final String SELECT_STAFF_BY_ID = "select * from staffs where id =?";
    private static final String SELECT_ALL_STAFF = "select staffs.id, staffs.name, staffs.email, staffs.salary, departments.department\n" +
            "from staffs\n" +
            "inner join departments on staffs.department_id = departments.id;";
    private static final String DELETE_STAFF_BY_ID = "delete from staffs where id = ?;";
    private static final String UPDATE_STAFF = "update staffs set name = ?,email= ?, salary =?, department_id = ? where id = ?;";
    private static final String SELECT_STAFF_BY_NAME = "select staffs.id, staffs.name, staffs.email, staffs.salary, departments.department\\n\" +\n" +
            "            \"from staffs\\n\" +\n" +
            "            \"inner join departments on staffs.department_id = departments.id where staffs.name = ?;";
    private static final String SELECT_STAFF_BY_NAME_LIKE = "select * from staffs where country = ?";

    public StaffDAO() {
    }
    Connection connection = ConnectMySQL.getConnection();
    public Staff selectStaff(int id) {
        Staff staff = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STAFF_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                float salary = rs.getFloat("salary");
                int department_id = rs.getInt("department_id");
                staff = new Staff(id, name, email, salary, department_id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return staff;
    }

    public List<Staff> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
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
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    public List<User> selectUserByCountry(String country) {
        List<User> users = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BYCountry);) {
            preparedStatement.setString(1, country);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = Integer.parseInt(rs.getString("id"));
                String name = rs.getString("name");
                String email = rs.getString("email");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

}
