package com.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.board.BoardDTO;
import com.exam.service.BoardService;

@Controller
@RequestMapping("board/")
public class BoardController {

	@Autowired private BoardService bs;
	
	@GetMapping("modify/{idx}/")
	public String modify(@PathVariable int idx, Model model) {
		BoardDTO dto = bs.readBoard(idx);
		model.addAttribute("dto", dto);
		return "board/modifyForm";
	}
	
	@PostMapping("modify/{idx}/")
	public String modify(BoardDTO dto, @PathVariable int idx) {
		int row = bs.modifyBoard(dto);
		System.out.println("수정된 줄 수 : " + row);
		return "redirect:/board/read/" + idx + "/";
	}
	
	
	@GetMapping("delete/{idx}/")
	public String delete(@PathVariable int idx) {
		bs.deleteBoard(idx);
		return "redirect:/board/";
	}
	
	@GetMapping("read/{idx}/")
	public String read(@PathVariable int idx, Model model) {
		BoardDTO dto = bs.readBoard(idx);
		// 줄바꿈을 정상적으로 적용하기 위해서
		dto.setContext(dto.getContext().replace("\n", "<br>"));
		
		model.addAttribute("dto", dto);
		return "board/read";
	}
	
	@GetMapping("write/")
	public String write() {
		return "board/writeForm";
	}
	
	@PostMapping("write/")
	public String write(BoardDTO dto) {
		ModelAndView mav = new ModelAndView("");
		int row = bs.writeBoard(dto);
		return "redirect:/board/";
	}
	
	@GetMapping("")
	public ModelAndView boardList() {
		return boardList(1);
	}
	
	@GetMapping("{page}")
	public ModelAndView boardList(@PathVariable int page) {
		return bs.getBoardList(page);
	}
}
