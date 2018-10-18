package com.kh.finalPJ.goods;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class goodsDaoImpl implements goodsDao {

	
	@Autowired
	SqlSession sqlSession;
	
	private String namespace = "goods.";
	
	 /* bbsList */
	@Override
	public List<goodsBbsDto> getbbs() {
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "getbbs");
		
		return list;
	}

	/* AJAX 검색 */
	@Override
	public List<goodsBbsDto> findgoods(String title,String lists) {
		
		
		List<goodsBbsDto> list = null;
		//List<goodsBbsDto> list = sqlSession.selectList(namespace + "findgoods", title);

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

	@Override
	public List<goodsBbsDto> findchecked(String lists) {
		
		
		ArrayList<String> arraylist = new ArrayList<>();
		arraylist.add(lists);
		
		HashMap<String , Object> maplist = new HashMap<String , Object>();
		maplist.put("arraylist", arraylist);
		
		List<goodsBbsDto> list = sqlSession.selectList(namespace + "findchecked", maplist);
	
		
		return list;
	}

	
	
}
