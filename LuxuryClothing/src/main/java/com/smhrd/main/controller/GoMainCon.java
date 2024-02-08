package com.smhrd.main.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoMainCon implements Controller {

	// execute 메소드를 통해서
	// 실행하고자 하는 기능(로직)을 실행시키고 그 결과로
	// 다음 페이지가 어디인지를 리턴
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		// http://localhost:8082/MassageSystem -> webapp 폴더
		// jsp로 이동시에는 jsp 파일의 이름만 지정
		System.out.println("luxury MainCon : test_main.jsp");
		return "test_main";
		
	}
	
	
	
}
