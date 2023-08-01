package com.study.library.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.library.model.MemberDTO;

@Service
public class MemberMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<MemberDTO> listMember(){
		return sqlSession.selectList("listMember");
	}
	
	public int insertMember(MemberDTO dto) {
		return sqlSession.insert("insertMember", dto);
		
	}


}
