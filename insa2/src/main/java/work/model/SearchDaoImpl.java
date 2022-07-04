package work.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import insa.model.EmpDto;
import pack.mybatis.SqlMapConfig;
import work.controller.EmpBean;

@Repository
public class SearchDaoImpl  implements SearchDaoInter{
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	@Override
	public List<WorkDto> getSearch(EmpBean bean) {
		SqlSession sqlSession = factory.openSession();
		List<WorkDto> list = null;
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

	
}
