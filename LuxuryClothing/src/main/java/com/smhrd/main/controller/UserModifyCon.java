package com.smhrd.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.main.model.UserDTO;

public class UserModifyCon implements Controller {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		UserDTO dto = new UserDTO();
		dto.setUser_addr(address);
		dto.setUser_email(email);
		dto.setUser_name(name);
		dto.setUser_phone(phone);
		dto.setUser_id(id);
		
		
		
		return "user_modify";

	}

}

