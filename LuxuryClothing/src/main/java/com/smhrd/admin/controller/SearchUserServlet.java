package com.smhrd.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.admin.model.AdminDAO;
import com.smhrd.admin.model.AdminDTO;

@WebServlet("/searchUser")
public class SearchUserServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");

        AdminDAO adminDAO = new AdminDAO();
        List<AdminDTO> userList = adminDAO.searchUserById(userId);

        // 검색 결과를 HTML 형식으로 작성하여 응답합니다.
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write("<table border='1'>");
        response.getWriter().write("<tr><th>ID</th><th>Name</th><th>Email</th></tr>");
        for (AdminDTO user : userList) {
            response.getWriter().write("<tr>");
            response.getWriter().write("<td>" + user.getUser_id() + "</td>");
            response.getWriter().write("<td>" + user.getUser_name() + "</td>");
            response.getWriter().write("<td>" + user.getUser_email() + "</td>");
            response.getWriter().write("</tr>");
        }
        response.getWriter().write("</table>");
    }
}