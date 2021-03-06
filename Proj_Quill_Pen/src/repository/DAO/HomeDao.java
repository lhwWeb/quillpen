package repository.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import myBatis.MyBatis;
import repository.DTO.BookBean;
import repository.DTO.NoticeBean;
import repository.DTO.WriterBean;

public class HomeDao {
	private static String namespace = "myBatis.mapper.mapper.";

	SqlSessionFactory sqlSessionFactory = MyBatis.getSqlSessionFactory();
	
	//////////////////////////// 전체 책목록 가져오기 시작//////////////////////////////
	public List<BookBean> selectBookList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();		
		
		try {
			return sqlSession.selectList(namespace+"selectBookList");

		} finally {
			sqlSession.close();
		}
	}
	
	//////////////////////////// 전체 책목록 가져오기 끝////////////////////////////////
	public List<NoticeBean> selectNoticeList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();		
		
		try {
			return sqlSession.selectList(namespace+"selectNoticeList");
		} finally {
			sqlSession.close();
		}
	}
	
	public List<WriterBean> selectWriterList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();		
		
		try {
			return sqlSession.selectList(namespace+"selectWriterList");
		} finally {
			sqlSession.close();
		}
	}
	
	
}
