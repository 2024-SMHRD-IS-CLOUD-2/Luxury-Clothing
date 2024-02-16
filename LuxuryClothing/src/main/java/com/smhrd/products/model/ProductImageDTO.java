package com.smhrd.products.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//lombok 라이브러리 : Class의 기본 메소드(생성자, getter/setter) 자동완성

@Data	// 기본메소드 자동완성(getter, setter, toString)
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자 자동완성 
@NoArgsConstructor	// 기본생성자 : 기본생성자는 반드시 있어야 한다.

public class ProductImageDTO {

	private String prodUploaded_seq;	// 업로드 순번 (DB에서 시퀀스로 자동 번호 지정해줌)
	private String prod_id;
	private String prodFile_name;		// 파일 이름
	private String prodFile_realname;	// 파일 실제이름
	private String prodFile_size;		// 파일 사이즈
	private String prodFile_ext;		// 파일 확장자
	private String prodFile_path;		// 파일 경로


}
