package com.kh.finalPJ.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class reviewDaoImpl implements reviewDao {
	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "review.";

	/*글 목록*/
	@Override
	public List<reviewDto> getreview() {
		
	List<reviewDto> list = sqlSession.selectList(namespace + "getreview");
	
		return list;
	}

	/*글 쓰기*/
	@Override
	public boolean writeReview(reviewDto dto) throws Exception {
		
		sqlSession.insert(namespace + "writeReview", dto);
		
		//System.out.println(dto.getContent());
		//System.out.println(dto.getId());
		//System.out.println(dto.getTitle());
		
		return true;
	}

	/*디테일보기*/
	@Override
	public reviewDto detailreview(int seq) throws Exception {
		
		return sqlSession.selectOne(namespace + "detailreview", seq);
	}

	/*글삭제*/
	@Override
	public void deleterev(int seq) throws Exception {
		
		sqlSession.update(namespace + "deleterev", seq);
		
	}

	/*글 수정*/
	@Override
	public void reviewupdate(reviewDto dto, int seq) throws Exception {
		sqlSession.update(namespace + "reviewupdate", dto);
		
	}

	

	
}
