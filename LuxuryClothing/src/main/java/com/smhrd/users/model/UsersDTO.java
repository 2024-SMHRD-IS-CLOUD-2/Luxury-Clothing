package com.smhrd.users.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data	// 기본메소드 자동완성(getter, setter, toString)
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자 자동완성 
@NoArgsConstructor	// 기본생성자 : 기본생성자는 반드시 있어야 한다.

public class UsersDTO {
	
	private String user_id;
	private String user_pw;
	private String user_phone;
	private String user_name;
	private String user_email;
	private String user_grade;
	private String prod_id;
	private String prod_name;
	private String prod_price;
	private String prod_option;
	private String prod_yn;

}
