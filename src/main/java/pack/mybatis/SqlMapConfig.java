package pack.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;//session�� �븣怨� �엳�뒗 �꽭�뀡�씠 �븘�땲�씪 �옉�뾽�떒�쐞瑜� �쓽誘명븿
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig{
	public static SqlSessionFactory sqlSession;
	
	static {
		String resource ="pack/mybatis/Configuration.xml";
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}
}
