package com.smhrd.admin.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.setting.SqlSessionManager;

public class AdminDAO {
	// 1) SqlSession을 가지고 올 수 있는 SqlSessionFactory 생성
		SqlSessionFactory factory =  SqlSessionManager.getFactory();
		
		public AdminDTO ad_login(AdminDTO dto) {
			SqlSession sqlSession = factory.openSession(true);
			AdminDTO result = sqlSession.selectOne("login",dto);
			sqlSession.close();
			
			return result;
		}
}
