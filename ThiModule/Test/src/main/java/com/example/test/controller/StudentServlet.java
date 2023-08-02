package com.example.test.controller;

import com.example.test.DAO.ClassDAO;
import com.example.test.DAO.StudentDAO;
import com.example.test.DAO.ViewStudentDAO;
import com.example.test.model.ClassRoom;
import com.example.test.model.Student;
import com.example.test.model.ViewStudent;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "student", value = "/student")
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ClassDAO classDAO = new ClassDAO();
    private StudentDAO studentDAO = new StudentDAO();
    private ViewStudentDAO viewStudentDAO = new ViewStudentDAO();

    public void init() {
        classDAO = new ClassDAO();
        studentDAO = new StudentDAO();
        viewStudentDAO = new ViewStudentDAO();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertUser(request, response);
                    break;
                case "edit":
                    updateUser(request, response);
                    break;
                case "select":
                    selectByName(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteUser(request, response);
                    break;
                default:
                    listViewStudent(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listViewStudent(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<ViewStudent> viewStudentList = viewStudentDAO.selectAllViewStudent();
        request.setAttribute("viewStudentList", viewStudentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ClassRoom> classRoomList = classDAO.selectAllClass();
        request.setAttribute("classRoomList",classRoomList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ViewStudent viewStudent = viewStudentDAO.selectViewStudent(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        request.setAttribute("viewStudent", viewStudent);
        List<ClassRoom> classRoomList = classDAO.selectAllClass();
        request.setAttribute("classRoomList",classRoomList);
        dispatcher.forward(request, response);
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String classRoom = request.getParameter("classRoom");
        ClassRoom classN = classDAO.selectClasRoom(classRoom);
        int class_id = classN.getId();
        Student student = new Student(name, email, dateOfBirth, address, phoneNumber, class_id);
        studentDAO.insertStudent(student);
        response.sendRedirect("/student");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String classRoom = request.getParameter("classRoom");
        ClassRoom classN = classDAO.selectClasRoom(classRoom);
        int class_id = classN.getId();
        Student student = new Student(id, name, email, dateOfBirth, address, phoneNumber, class_id);
        studentDAO.updateUser(student);
        response.sendRedirect("/student");
    }
    private void selectByName(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String nameLike = request.getParameter("nameLike");
        System.out.println(nameLike);
        List<ViewStudent> viewStudentList = viewStudentDAO.selectUserByName(nameLike);
        request.setAttribute("viewStudentList", viewStudentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        studentDAO.deleteStudent(id);
        response.sendRedirect("/student");
    }
}
