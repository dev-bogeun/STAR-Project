package com.star.report.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.star.mybatis.config.MyBatisConfig;
import com.star.report.domain.ReportDTO;
import com.star.report.domain.Search;

public class ReportDAO {
public SqlSession sqlSession;

	public ReportDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	신고목록
	public List<ReportDTO> select(HashMap<String, Object> pagable){
		return sqlSession.selectList("report.select", pagable);
	}
	
//	회원삭제
	public void deleteAdmin(Long userId) {
		sqlSession.delete("report.deleteAdmin", userId);
	} 
	
//	전체 신고목록 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("report.getTotal", search);
	}



	/*
	 * public List<ReportDTO> selectAll(HashMap<String, Object> pagable){ return
	 * sqlSession.selectList("report.selectAll", pagable); }
	 */
   
   public int getTotal(){
      return sqlSession.selectOne("report.getTotal");
   }
   
   
//   삭제
   public void delete(Long reprotId) {
      sqlSession.delete("report.delete", reprotId);
   }
   
//   관리자 신고목록 상세보기
	public ReportDTO selectReportDetailAdmin(Long reportId) {
		return sqlSession.selectOne("report.selectReportDetailAdmin", reportId);
		
	}
}
