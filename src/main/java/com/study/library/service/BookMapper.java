package com.study.library.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.library.model.BookDTO;

@Service
public class BookMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BookDTO> listBook(){
		return sqlSession.selectList("listBook");
	}
	
	public int insertBook(BookDTO dto) {
		return sqlSession.insert("insertBook", dto);
		
	}
	
	public List<BookDTO> selectBookbyWriter(String writer){
		return sqlSession.selectList("selectbyWriter", writer);
		
	}
	
	public List<BookDTO> selectBookbyTitle(String title){
		return sqlSession.selectList("selectbyWriter", title);
		
	}
	
	public int deleteBook(int no) {
		return sqlSession.delete("deleteBook", no);
	}
	

}
