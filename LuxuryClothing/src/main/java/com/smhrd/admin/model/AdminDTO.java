package com.smhrd.admin.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data	// 기본메소드 자동완성(getter, setter, toString)
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자 자동완성 
@NoArgsConstructor	// 기본생성자 : 기본생성자는 반드시 있어야 한다.

public class AdminDTO {
	private String admin_id;
	private String admin_pw;
	private String admin_phone;
	private String admin_addr;
	private String admin_name;
	private String admin_email;
	
}
