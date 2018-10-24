package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.finalPJ.member.basketDto;
import com.kh.finalPJ.review.reviewDto;

@Repository
public class goodsDaoImpl implements goodsDao {

	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "goods.";
	
	 /* bbsList */
	@Override
	public List<goodsBbsDto> getbbs(String startindex, String endindex) {
		
		
		goodspage dto = new goodspage();
		
		dto.setStartindex(startindex);
		dto.setEndindex(endindex);
		
	
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "getbbs",dto);
		
		return list;
	}
	
	

	
	@Override
	public List<goodsBbsDto> getbbslength() {
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "getbbslength");
		return list;
	}




	/* readcount */
	@Override
	public void readcount(int seq) {
		
		sqlSession.update(namespace + "readcount", seq);
		
		System.out.println(seq);
		
	}

	/* getgoodsdetail */
	@Override
	public goodsBbsDto getgoodsdetail(int seq) {
		
		goodsBbsDto dto = sqlSession.selectOne(namespace + "getgoodsdetail", seq);
		
		return dto;
	}

	
	
	/* AJAX 검색 (title + selectbox) */
	@Override
	public List<goodsBbsDto> findgoods(String title,String lists) {
		
		
		List<goodsBbsDto> list = null;

		if(title.equals("")) {
			// 타이틀의 값이 없을때
			// order by 만 돌려줌
			
			ArrayList<String> arraylist = new ArrayList<>();
			arraylist.add(lists);
			
			HashMap<String , Object> maplist = new HashMap<String , Object>();
			maplist.put("arraylist", arraylist);
			
			list = sqlSession.selectList(namespace + "findchecked", maplist);
			
			System.out.println("들어옴");
			
		}else {
			// 값이 있을때 
			// LIKE 랑 ORDER BY 같이 돌려줌
			goodsBbsDto dto = new goodsBbsDto();
			
			dto.setTitle(title);
			dto.setLists(lists);
			
			list = sqlSession.selectList(namespace + "findgoodsAll", dto);
			
			System.out.println("안들어옴");
		}
		
		
		
		return list;
	}

	/*리뷰 및 qna 끌어오기*/
	@Override
	public List<reviewDto> getreview_qna(String g_code) {
		
		List<reviewDto> list = sqlSession.selectList(namespace + "getreview_qna", g_code);
		
		return list;
	}



	/*basketinsert*/
	@Override
	public boolean basketinsert(basketDto dto) {
		
		return sqlSession.insert(namespace + "basketinsert", dto)>0 ? true: false;
	}
}
