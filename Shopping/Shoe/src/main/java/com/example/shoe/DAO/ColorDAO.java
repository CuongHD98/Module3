package com.example.shoe.DAO;

import com.example.shoe.model.Color;
import com.example.shoe.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ColorDAO {
    private static final String INSERT_COLOR_SQL = "INSERT INTO colors (code) VALUES (?);";
    private static final String SELECT_COLOR_BY_ID = "select * from colors where id =?";
    private static final String SELECT_ALL_COLOR = "select * from colors";
    private static final String DELETE_COLOR_SQL = "delete from colors where id = ?;";
    private static final String UPDATE_COLOR_SQL = "update colors set code = ? where id = ?;";

    public ColorDAO() {
    }
    Connection connection = ConnectMySQL.getConnection();

    public void insertColor(Color color) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_COLOR_SQL)) {
            preparedStatement.setString(1, color.getCode());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public Color selectColor(int id) {
        Color color = null;
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_COLOR_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String code = rs.getString("code");
                color = new Color(id, code);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return color;
    }

    public List<Color> selectAllColor() {
        List<Color> colors = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_COLOR);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                colors.add(new Color(id, code));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return colors;
    }

    public boolean deleteColor(int id) throws SQLException {
        boolean rowDeleted;
        try (PreparedStatement statement = connection.prepareStatement(DELETE_COLOR_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateColor(Color color) throws SQLException {
        boolean rowUpdated;
        try (PreparedStatement statement = connection.prepareStatement(UPDATE_COLOR_SQL);) {
            statement.setString(1, color.getCode());
            statement.setInt(2, color.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
