package com.smhrd.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.products.model.ProductImageDTO;
import com.smhrd.products.model.ProductsDAO;
import com.smhrd.products.model.ProductsDTO;

public class MainCon implements Controller {

	// execute 메소드를 통해서
	// 실행하고자 하는 기능(로직)을 실행시키고 그 결과로
	// 다음 페이지가 어디인지를 리턴
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		System.out.println("luxury MainCon : main.jsp");
		
		ProductsDAO dao = new ProductsDAO();
		
		// 메인 이미지 불러오기
		
		// 메인 상단 위 상품 리스트
		List<ProductImageDTO> result = dao.selectImageMain();
		
		
		if (result != null) {
			System.out.println("메인 상품 전체조회 성공");
			HttpSession session = request.getSession();
			session.setAttribute("product_result", result);
		} else {
			System.out.println("메인 상품 전체조회 실패");
		}
		
		return "main";
		
	}
	
	
	
}
