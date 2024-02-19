package com.smhrd.products.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.main.controller.Controller;
import com.smhrd.main.model.UserDTO;
import com.smhrd.products.model.ProductsDAO;
import com.smhrd.products.model.ProductsDTO;

public class CsgnApplyCon implements Controller {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("luxury CsgnApplyCon : csgnApply.jsp");
		
		// session에 있는 user정보 중 id 사용
		HttpSession session = request.getSession();
		
		String name = request.getParameter("goods_name");
		String price = request.getParameter("wish_price");
		String kind = request.getParameter("goods_kind");
		String option = request.getParameter("goods_option");
		String detail = request.getParameter("goods_detail");
		String user_id = request.getParameter("user_id");
		
		// DTO로 묶기
		ProductsDTO dto = new ProductsDTO();
		
		dto.setProd_name(name);
		dto.setProd_price(price);
		dto.setProd_category(kind);
		dto.setProd_option(option);
		dto.setProd_desc(detail);
		dto.setUser_id(user_id);
		
		System.out.println("CsgnApplyCon : user_id : " + dto.getUser_id());
		ProductsDAO dao = new ProductsDAO();
		
		int res = dao.csgnApply(dto);
		
		if(res > 0) {
			System.out.println("신청 성공");
			
		}else {
			System.out.println("신청 실패");
		}
		
		// main으로 이동
		return "main";

	}

}
