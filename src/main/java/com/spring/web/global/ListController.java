package com.spring.web.global;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.web.board.BoardDAO;
import com.spring.web.board.BoardDTO;

@Controller
public class ListController {
	@Autowired
	BoardDAO  dao;
	
	@RequestMapping("/board_list.do")
	public String board_list( Model  model){     
		System.out.println("board_list(Model) 10:08");
		List<BoardDTO> list = dao.dbSelect();
		model.addAttribute("naver", list);
		String url="/views/board/board_list";
		return url;
	}//end
	
	@RequestMapping("/board_list2.do")
	public String board_list2( Model  model){     
		System.out.println("board_list(Model) 10:08");
		List<BoardDTO> list = dao.dbSelect();
		model.addAttribute("naver", list);
		String url="/views/board/board_list2";
		return url;
	}//end
}//ListController class end






