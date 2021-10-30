package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.exam.board.BoardDAO;
import com.exam.board.BoardDTO;
import com.exam.board.BoardPaging;

@Service
public class BoardService {

	@Autowired private BoardDAO dao;
	
	// 서비스에서 반환할 값이 많으면, 메서드를 따로따로 처리해야 하는데, 한번에 컨트롤러에게 전달하기 위해서
	public ModelAndView getBoardList(int page) {
		ModelAndView mav = new ModelAndView("board/board");
		BoardPaging paging = new BoardPaging();
		
		int boardCount = dao.selectCount();	// 현재 게시판의 게시글 총 개수
		paging.setPage(boardCount, page);	// 전체 개수와 현재 페이지를 전달하면
		int first = paging.getFirst();		// 페이징 처리된 첫 글번호와			// 1
		int last = paging.getLast();		// 페이징 처리된 마지막 글번호를 받아온다	// 10
		
		List<BoardDTO> list = dao.selectList(first, last);
		mav.addObject("list", list);
		
		mav.addObject("nowPage", page);				// 현재 보고있는 페이지 번호
		mav.addObject("begin", paging.getBegin());	// 전체 페이지의 범위 시작
		mav.addObject("end", paging.getEnd());		// 전체 페이지의 범위 끝
		
		mav.addObject("prev", paging.hasPrev());
		mav.addObject("next", paging.hasNext());
		
		return mav;
	}

	public int writeBoard(BoardDTO dto) {
		return dao.insertBoard(dto);
	}

	public BoardDTO readBoard(int idx) {
		BoardDTO dto = dao.selectBoard(idx);
		
		return dto;
	}

	public void deleteBoard(int idx) {
		dao.deleteBoard(idx);
	}

	public int modifyBoard(BoardDTO dto) {
		
		return dao.updateBoard(dto);
	}

}







