package com.exam.board;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {


	@Autowired private SqlSessionTemplate st;

	public List<BoardDTO> selectList(int first, int last) {
		
		HashMap<String, Integer> param = new HashMap<String, Integer>();
		param.put("first", first);
		param.put("last", last);
		return st.selectList("selectList", param);
	}

	public int selectCount() {
		return st.selectOne("selectCount");
	}

	public int insertBoard(BoardDTO dto) {
		return st.insert("insertBoard", dto);
	}

	public BoardDTO selectBoard(int idx) {
		return st.selectOne("selectBoard", idx);
	}

	public int deleteBoard(int idx) {
		return st.delete("deleteBoard", idx);
	}

	public int updateBoard(BoardDTO dto) {
		String sql = "update board set title=?, writer=?, context=? where idx=?";
		
		return st.update("updateBoard", dto);
	}
	
	
}






