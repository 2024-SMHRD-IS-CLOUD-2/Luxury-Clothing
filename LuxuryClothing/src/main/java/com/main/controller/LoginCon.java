package com.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.UserDAO;
import com.main.model.UserDTO;

public class LoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 2. 요청 데이터 꺼내오기
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		// 3. 데이타 하나로 묶어주기(MemberDTO)
		UserDTO dto = new UserDTO();
		dto.setUser_id(id);
		dto.setUser_pw(pw);
		
		// 4. DAO 불러오기
		UserDAO dao = new UserDAO();
		// 5. DAO에 있는 로그인 기능 사용
		UserDTO result = dao.login(dto);
		
//		System.out.println("전화번호 " + result.getTel());
//		System.out.println("주소 " + result.getAddress());
		
		// 6. 로그인에 성공했다면 email, tel, adress session 담아서
		if (result != null) {
			System.out.println("로그인 성공");
			// session 공간 불러오기
			HttpSession session = request.getSession();
			// session에 데이터 담기
			session.setAttribute("result", result);
		// 6-2. 로그인 실패해도 main.jsp
		} else {
			System.out.println("로그인 실패");
		}
		// 7. main.jsp
		return "redirect:/Test_main.do";
		
		
	}

}
