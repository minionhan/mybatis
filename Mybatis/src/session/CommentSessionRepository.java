package session;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Comment;

public class CommentSessionRepository { 
	private final String namespace = "mybatis.mapper.CommentMapper";
	
	//역할:xml의 주소로 build한 것?
	private SqlSessionFactory getSqlSessionFactory() {
		//src에 있는 걸 가지고 온다.
		String resource = "mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch(IOException e) {  
			throw new IllegalArgumentException(e);
		}
		return new SqlSessionFactoryBuilder().build(inputStream);
	}
	public Comment selectCommentByPrimaryKey(Long commentNo) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			return (Comment)sqlSession.selectOne(namespace+".selectCommentByPrimaryKey",commentNo);
		} finally {
			sqlSession.close(); 
		}
	}
	
	public List<Comment>selectCommentByCondition(Map<String,Object>condition){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			return sqlSession.selectList(namespace+".selectCommentByCondition",condition);
		} finally {
			sqlSession.close();
		}
	}
	public Integer insertComment(Comment comment) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			String statement = namespace +".insertComment";
			int result = sqlSession.insert(statement,comment);
			if(result>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return result;
		} finally {
			sqlSession.close();
		}
	}
	public Integer updateComment(Comment comment) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			String statement = namespace +".updateComment";
			int result = sqlSession.update(statement,comment);
			if(result>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return result;
		} finally {
			sqlSession.close(); 
		}
	}
	public Integer deleteComment(Long commentNo) { 
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			String statement = namespace +".deleteComment";
			int result = sqlSession.delete(statement,commentNo);
			if(result>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return result; 
		} finally {
			sqlSession.close();
		}
	}

}
