
package com.smhrd.purchases.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.setting.SqlSessionManager;
import com.smhrd.products.model.ProductsDTO;

public class PurchasesDAO {

	// 1) SqlSession을 가지고 올 수 있는 SqlSessionFactory 생성
	SqlSessionFactory factory =  SqlSessionManager.getFactory();
	
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
}
