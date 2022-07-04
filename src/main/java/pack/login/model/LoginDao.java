package pack.login.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import pack.mybatis.SqlMapConfig;
@Repository
public class LoginDao{
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public LoginDto LoginInfo(String emp_no) {
		System.out.println("emp_no는 "+emp_no); // controller에서 넘겨받은 emp_no 값. 잘 찍힘
		
		SqlSession sqlSession = factory.openSession(); 
		LoginDto dto = null;
		//logindto에는 string 타입의 emp_no,empInfo_pass 변수  getter/setter 존재
		try {
			dto = sqlSession.selectOne("loginInfo", emp_no); 
			//파라미터타입 string 으로 emp_no 전달 , DataMapper.xml에 sql문과 resultType="logindto", parameterType="string" 
			System.out.println("받아온 자료 :"+dto); // 이게 찍히지도 않고 return 되버리고 null값만 뜸..
			return dto;
		} catch (Exception e) {
			return null;	//그냥 바로 캐치문으로 null반환되어버림.
		}finally {
			if(sqlSession != null) sqlSession.close();
		}
	}
}
