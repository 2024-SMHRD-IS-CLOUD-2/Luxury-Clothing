
package com.smhrd.purchases.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.setting.SqlSessionManager;
import com.smhrd.products.model.ProductsDTO;

public class PurchasesDAO {

	// 1) SqlSession을 가지고 올 수 있는 SqlSessionFactory 생성
	SqlSessionFactory factory =  SqlSessionManager.getFactory();
	
	public int purchaseRecord(PurchasesDTO dto) {
		
		SqlSession sqlSession = factory.openSession(true);
		
		int result = sqlSession.insert("purchaseRecord", dto);
		
		sqlSession.close();
		
		return result;

	}
}
