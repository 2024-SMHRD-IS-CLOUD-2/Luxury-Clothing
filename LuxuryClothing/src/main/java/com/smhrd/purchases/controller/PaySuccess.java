package com.smhrd.purchases.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.smhrd.main.controller.Controller;

public class PaySuccess implements Controller {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("PaySuccess 방문");
		
		// JSON 데이터를 받아오기
		String a  = request.getParameter("paidAmount");
		System.out.println(a);
		String a1  = request.getParameter("status");
		System.out.println(a1);
		
		/*
		 * request.getParameter("paymentData"); // JSON 문자열을 JSON 객체로 파싱 JSONObject
		 * paymentData = new JSONObject(jsonData);
		 * 
		 * // 파싱한 데이터 사용 예시 String paidAmount = paymentData.getString("paidAmount");
		 * String status = paymentData.getString("status"); String payMethod =
		 * paymentData.getString("payMethod"); String userId =
		 * paymentData.getString("user_id"); String prodPrice =
		 * paymentData.getString("prod_price"); String prodId =
		 * paymentData.getString("prod_id"); String deliAddr =
		 * paymentData.getString("deli_addr"); String deliPhone =
		 * paymentData.getString("deli_phone"); String deliName =
		 * paymentData.getString("deli_name");
		 */
		 
        
//		System.out.println(userId);
        
		return null;
		
	}

}

