package com.exam.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired private SqlSessionTemplate st;
	
	public int insertMember(MemberDTO member) {
		return st.insert("insertMember", member);
	}
	public MemberDTO selectMemberOne(MemberDTO request) {
		return st.selectOne("selectOne", request);
	}
	public int selectUserid(MemberDTO request) {
		return st.selectOne("selectUserid", request);
	}

}
