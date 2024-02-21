package com.smhrd.products.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.setting.SqlSessionManager;

public class ProductsDAO {

	// 1) SqlSession을 가지고 올 수 있는 SqlSessionFactory 생성
	SqlSessionFactory factory =  SqlSessionManager.getFactory();
	
	
	// 전체 상품 리스트 메소드
	public List<ProductsDTO> selectProducts() {
		
		System.out.println("ProductsDAO 방문 selectProducts");
		// 1. sql 세션 빌려오기
		SqlSession sqlSession =  factory.openSession();
		// 2. sqlSssion 사용해서 sql 쿼리문 실행
		// 	뭐리문 --> mapper.xml
		List<ProductsDTO> resultList = sqlSession.selectList("selectProducts");
		// MemberDTO -> 한명에 대한 정보를 표현할 수 있는 type
		// 여러명의 정보를 하나로 묶어서 표현함.
		// 1) 객체 배열 2)ArrayList
		// : 크기가 가변적인 ArrayList 사용했었음
		// ArrayList의 부모 클래스 격인 List 형태로 리턴을 받아옴 !
		
		// 3. 연결객체 반납
		sqlSession.close();
		// 4. 조회한 결과 반환
		
		return resultList;
	}
	
	
	// 검색조건으로 상품 리스트 메소드
	public List<ProductsDTO> selectProductsAll(ProductsDTO dto) {
		
		System.out.println("ProductsDAO 방문 selectProductsAll");
		SqlSession sqlSession =  factory.openSession();
		List<ProductsDTO> resultList = sqlSession.selectList("selectProductsAll", dto);
		sqlSession.close();
		
		return resultList;
	}
	
	// 검색조건으로 상품 리스트 카운트 메소드
	public int selectProductsAllCount(ProductsDTO dto) {
		
		System.out.println("ProductsDAO 방문 selectProductsAllCount");
		SqlSession sqlSession =  factory.openSession();
		int result = sqlSession.selectOne("selectProductsAllCount", dto);
		sqlSession.close();
		
		return result;
	}
	
	// 위탁판매 신청 메소드
	public int csgnApply(ProductsDTO dto) {
		System.out.println("ProductsDAO 방문 csgnApply");
		SqlSession sqlSession = factory.openSession(true);
		
		int row = sqlSession.insert("csgnApply", dto);
		
		sqlSession.close();
		
		return row;
	}
	

	public void insertProductImageUpload(List<ProductImageDTO> dto) {
		
		System.out.println("ProductsDAO 방문 insertProductImageUpload");
		// factory.openSession(true) 에서 true 가 커밋여부 !
		SqlSession sqlSession =  factory.openSession(true);
		int result = sqlSession.insert("ProductImageUpload", dto);
		sqlSession.close();
		
		if (result > 0) {
			System.out.println("ProductImageSave 상품 이미지 등록 성공!");
		} else {
			System.out.println("ProductImageSave 상품 이미지 등록 실패!");
			
		}
	}
	
	public List<ProductImageDTO> selectProductImages(ProductImageDTO dto) {
		
		System.out.println("ProductsDAO 방문 selectProductImages");
		// factory.openSession(true) 에서 true 가 커밋여부 !
		SqlSession sqlSession =  factory.openSession();
		List<ProductImageDTO> result = sqlSession.selectList("selectImages", dto);
		sqlSession.close();
		
		if (result.equals(null)) {
			System.out.println("ProductImageSave 상품 이미지 조회 실패!");
		} else {
			System.out.println("ProductImageSave 상품 이미지 조회 성공!");
			
		}
		
		return result;
	}
	
	// 상품 상세 조회 정보 가져오는 메소드
	public ProductsDTO selectProduct(String productId) {
		System.out.println("ProductsDAO 방문 selectProduct");
		
		SqlSession sqlSession = factory.openSession();
		ProductsDTO result = sqlSession.selectOne("selectProduct", productId);
		sqlSession.close();
		System.out.println(result); 
		
		if (result.equals(null)) {
			System.out.println("selectProduct 상품 상세 조회 실패!");
		} else {
			System.out.println("selectProduct 상품 상세 조회 성공!");
			
		}
		return result;
	}
	
	// 상품에서 대표 이미지와 상품 정보를 가져오는 로직
	public List<ProductImageDTO> selectImageMain() {
		
		System.out.println("ProductsDAO 방문 selectImageMain");
		// factory.openSession(true) 에서 true 가 커밋여부 !
		SqlSession sqlSession =  factory.openSession();
		List<ProductImageDTO> result = sqlSession.selectList("selectImageMain");
		sqlSession.close();
		
		if (result.equals(null)) {
			System.out.println("selectImageMain 상품 이미지 조회 실패!");
		} else {
			System.out.println("selectImageMain 상품 이미지 조회 성공!");
		}
		return result;
	}
	
	// 상품 총 개수를 카운트 해줌
	public int selectImageMainCount() {
		
		System.out.println("ProductsDAO 방문 selectImageMainCount");
		// factory.openSession(true) 에서 true 가 커밋여부 !
		SqlSession sqlSession =  factory.openSession();
		int result = sqlSession.selectOne("selectImageMainCount");
		sqlSession.close();
		
		return result;
	}
	
	// 메인 추천 상품에서 이미지와 상품 정보를 가져오는 로직
	public List<ProductImageDTO> selectImageMainPick(ProductsDTO dto) {
		
		System.out.println("ProductsDAO 방문 selectImageMainPick");
		// factory.openSession(true) 에서 true 가 커밋여부 !
		SqlSession sqlSession =  factory.openSession();
		List<ProductImageDTO> result = sqlSession.selectList("selectImageMainPick", dto);
		sqlSession.close();
		
		if (result.equals(null)) {
			System.out.println("selectImageMainPick 상품 이미지 조회 실패!");
		} else {
			System.out.println("selectImageMainPick 상품 이미지 조회 성공!");
		}
		return result;
	}

}

