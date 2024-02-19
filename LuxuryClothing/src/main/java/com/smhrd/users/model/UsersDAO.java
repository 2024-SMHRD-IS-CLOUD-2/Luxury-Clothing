package com.smhrd.users.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.setting.SqlSessionManager;

public class UsersDAO {

	// 1) SqlSession을 가지고 올 수 있는 SqlSessionFactory 생성
		SqlSessionFactory factory =  SqlSessionManager.getFactory();
		
		 // 장바구니에 담긴 상품 정보 가져오기
	    public List<UsersDTO> getCartItems(String userId) {
	        SqlSession sqlSession = SqlSessionManager.getFactory().openSession();
	        List<UsersDTO> cartItems = sqlSession.selectList("getCartItems", userId);
	        sqlSession.close();
	        return cartItems;
	    }
	    
	    // 현재 장바구니에 담겨있는 전체 상품의 가격의 합 가져오기
	    public int getTotalPrice(String userId) {
	        SqlSession sqlSession = SqlSessionManager.getFactory().openSession();
	        int totalPrice = sqlSession.selectOne("getTotalPrice", userId);
	        sqlSession.close();
	        return totalPrice;
	    }
		
}
