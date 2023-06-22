package com.star.answer.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.star.answer.domain.AnswerDTO;
import com.star.answer.domain.Search;
import com.star.mybatis.config.MyBatisConfig;

public class AnswerDAO {
public SqlSession sqlSession;

	public AnswerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	문의글 목록
	public List<AnswerDTO> select(HashMap<String, Object> pagable){
		return sqlSession.selectList("answer.select", pagable);
	}
	
//	회원삭제
	public void deleteAdmin(Long userId) {
		sqlSession.delete("answer.deleteAdmin", userId);
	}
	
//	전체 문의글 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("answer.getTotal", search);
	}

}
