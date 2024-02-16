package com.smhrd.products.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//lombok 라이브러리 : Class의 기본 메소드(생성자, getter/setter) 자동완성

@Data	// 기본메소드 자동완성(getter, setter, toString)
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자 자동완성 
@NoArgsConstructor	// 기본생성자 : 기본생성자는 반드시 있어야 한다.

public class ProductsDTO {

	// 반드시 테이블의 컬럼명과 필드 변수명이 같아야 한다.
	
	private String prod_id;
	private String prod_name;
	private String prod_price;
	private String prod_priceMin;
	private String prod_priceMax;
	private String prod_desc;
	private String prod_category;
	private String prod_option;
	private String prod_grade;
	private String prod_yn;
	private String created_at;
	private String prod_status;
	private String user_id;
	private String prod_crtfd;

}
