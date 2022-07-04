package wage.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import pack.mybatis.SqlMapConfig;
import wage.controller.wage_statement_Bean;

@Repository
public class wage_statement_DAOImp implements wage_statement_DAOInter {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	@Override
	public List<wage_statement_DTO> getWageAll() {
		SqlSession sqlSession = factory.openSession();
		List<wage_statement_DTO> wageList = null;
		try {
			wageList = sqlSession.selectList("selectwageAll");
			
		} catch (Exception e) {
			System.out.println("getWageAll err : "+e);
			return null;
		}finally {
			if(sqlSession != null)sqlSession.close();
		}return wageList;
	}

	@Override
	public List<wage_statement_DTO> getWageByBuserName(String buser_name) {
		SqlSession sqlSession = factory.openSession();
		List<wage_statement_DTO> wageListByBuser = null;
		try {
			wageListByBuser = sqlSession.selectList("searchWagebyBuserName", buser_name);
			
		} catch (Exception e) {
			System.out.println("getWageByBuserName err : "+e);
		}finally {
			if(sqlSession != null)sqlSession.close();
		}return wageListByBuser;
	}

	@Override
	public boolean insertWage(wage_statement_Bean wsbean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		
		try {
			int num = sqlSession.insert("insertwage", wsbean);
			if(num>0)  
				b = true;
			sqlSession.commit();
			
		} catch (Exception e) {
			System.out.println("insertWage err: " + e);
			sqlSession.rollback();
		}finally {
			if(sqlSession != null)sqlSession.close();
		}
		return b;
	}

	@Override
	public wage_statement_DTO getMyWage(wage_statement_Bean wsbean) {
		SqlSession sqlSession = factory.openSession();
		wage_statement_DTO dto = null;
		try {
			dto = sqlSession.selectOne("searchMyWage", wsbean);
			
		} catch (Exception e) {
			System.out.println("getMyWage err: " + e);
			
		}finally {
			if(sqlSession != null)sqlSession.close();
		}
		return dto;
	}

	
}
