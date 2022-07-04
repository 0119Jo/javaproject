package insa.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import insa.controller.EmpBean;
import pack.mybatis.SqlMapConfig;

@Repository
public class EmpImpl implements EmpInter{
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	@Override
	public List<EmpDto> list() {
		SqlSession sqlSession = factory.openSession();
		List<EmpDto> list = null;
		try {
			list= sqlSession.selectList("selectAll");
			return list;
		} catch (Exception e) {
			System.out.println("list err : "+e);
			return null;
		}finally {
			if(sqlSession != null)sqlSession.close();
		}
	}
	
	@Override
	public List<EmpDto> search(EmpBean bean) {
		SqlSession sqlSession = factory.openSession();
		List<EmpDto> list = null;
		try {
			list= sqlSession.selectList("selectSearch",bean);
			System.out.println("serch() : "+list);
			return list;
		} catch (Exception e) {
			System.out.println("search err : "+e);
			return null;
		}finally {
			if(sqlSession != null)sqlSession.close();
		}
	}
	
	@Override
	public boolean insert(EmpBean bean) {
		SqlSession sqlSession = factory.openSession();
		try {
			int num = sqlSession.insert("insertData", bean);
			if(num>0)return true;
			else return false;
		} catch (Exception e) {
			System.out.println("search err : "+e);
			return false;
		}finally {
			if(sqlSession != null)sqlSession.close();
		}
	}
	
}
