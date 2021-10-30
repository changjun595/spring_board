package com.exam.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.exam.member.MemberDAO;
import com.exam.member.MemberDTO;

@Service
public class MemberService {
	
	@Autowired private MemberDAO dao;
	
	public int joinMember(MemberDTO member) {
		return dao.insertMember(member);
	}
	public MemberDTO getMember(MemberDTO request) {
		return dao.selectMemberOne(request);
							
	}
	public int selectUserid(MemberDTO member) {
		int result = dao.selectUserid(member);
		return result;
	}

}
