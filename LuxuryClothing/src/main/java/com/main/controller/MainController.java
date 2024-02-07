package com.main.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.model.UserDAO;
import com.main.model.UserDTO;

@WebServlet("*.do") // *.do ㅣ .do로 : 끝나는 모든 요청을 방 
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// HashMap 자료구조
	// key - value 형태로 데이터(자바 객체를) 저장하는 자료 구조(딕셔너리랑 비슷)
	// 처음 선언한 자료형만 저장할 수 있다.
	// 자료 검색속도가 빠름
	// HashMap<key의 자료형, value의 자료형>
	private HashMap<String, Controller> handlerMapping = new HashMap<String, Controller>();
	
	
	// Servlet이 메모리에 할당될때 실행되는 메서드
	// 첫 번째 요청이 들어와서 Servlet이 메모리에 생성될때 단 한번만 실행
	@Override
	public void init() throws ServletException {
		
		// HashMap에 URLMapping을 키 값으로 하고, POJO(Controller)를 Value로 하도록 세팅
		// .put (key, value);
		handlerMapping.put("/goMain.do", new GoMainCon() );
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 요청구분
		// http : //localhost:8081/MassageSystem/login.do
		
		// MessageSystem/login.do
		String uri = request.getRequestURI();
		
		// MessageSystem
		String cpath = request.getContextPath();
		
		// login.do
		// 문자열 슬라이싱
		String mapping = uri.substring( cpath.length() );
		System.out.println(mapping);
		
		// =========================================================================
		String nextPage = null;
		// 1. 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
		Controller con = null;
		
		con = handlerMapping.get(mapping);
		
		// 2. 요청 Mapping 에 맞는 기능을 실행
//		if(mapping.equals("/goMain.do")) {
//			con = new GoMainCon();
//			
//		} else if (mapping.equals("/join.do")) {
//			con = new JoinCon();
//			
//		} else if (mapping.equals("/login.do")) {
//			con = new LoginCon();
//		}
		
		if(con != null) {
			nextPage = con.execute(request, response);
		}
		
		//=====================================================================================
		
		// 3. 페이지 이동
		if(nextPage != null) {
			
			// 페이지 이동하는 redirect / forward는 반드시 한번만 실행되어야함.
			// 만약 redirect를 하고 싶다면, UrlMapping 앞에 "redirect:/" 문자열 붙이자 !
			if (nextPage.contains("redirect:/")) {
				response.sendRedirect(nextPage.split(":/")[1]);
			} else {
				// jsp 이동시 redirect 불가, 무조건 forward만 사용가능
				String prefix = "WEB-INF/views/"; // 접두사(앞에 붙는 경로)
				String suffix = ".jsp"; // 접미사(뒤에 붙는 경로)
				
				RequestDispatcher rd = request.getRequestDispatcher(prefix + nextPage + suffix);
				
				rd.forward(request, response);
			}
			
		}
	}

}
