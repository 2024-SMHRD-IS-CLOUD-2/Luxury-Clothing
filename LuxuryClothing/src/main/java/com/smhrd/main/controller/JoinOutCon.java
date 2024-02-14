package com.smhrd.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.main.model.UserDAO;
import com.smhrd.main.model.UserDTO;

public class JoinOutCon implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 // 로그인한 사용자의 이메일 사용
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
        
		
        UserDAO dao = new UserDAO();
        int result = dao.joinOut(Integer.parseInt(id));
        
        // 회원 탈퇴 성공 여부에 따라 처리
        if (result > 0) {
            System.out.println("회원 탈퇴 성공");
            // 세션 해제
            session.invalidate();
        } else {
            System.out.println("회원 탈퇴 실패");
        }
        
		// 7. main.jsp
				return "redirect:/test_main.do";
	}
}
