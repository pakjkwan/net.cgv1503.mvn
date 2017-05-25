package com.spring.web.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.web.board.BoardDTO;
import com.spring.web.member.MemberDao;
import com.spring.web.member.MemberVo;


/**
 * Servlet implementation class CommonController
 */
@Controller

public class AdminController {
	@Autowired
	MemberDao  dao;
	
	@RequestMapping("/admin.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/admin/main";
	}
	
	
	@RequestMapping("/memberList.do")
	public String member_list( Model  model){     
		System.out.println("[AdminController] memberList 접속 성공");
		List<MemberVo> list = dao.dbSelect();
		model.addAttribute("list", list);
		String url="/views/admin/mg_member";
		return url;
	}//end
	
	@RequestMapping("/member_detail.do")
	public ModelAndView  member_detail(BoardDTO dto ,@RequestParam("email") String email){     
		System.out.println("board_detail 진입");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온 hobby_idx: " + email);
		
		MemberVo data = dao.dbDetail(email);
		mav.addObject("member", data);
		
		System.out.println("넘어온이름: " + data.getName());
		System.out.println("넘어온제목: " + data.getPasswd());
		System.out.println("넘어온내용: " + data.getMobile());
		System.out.println("넘어온성별: " + data.getEmail());
		
		System.out.println("[AdminController] member_detail 조회성공");
		
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("/views/admin/member_detail");
		return mav;
	}//end
	
	@RequestMapping("/member_delete.do")
	public ModelAndView  member_delete(@RequestParam("email") String email){     
		System.out.println("[AdminController] member_delete 진입");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온 Email: " + email);
		
		dao.dbDelete(email);
		
		System.out.println("[AdminController] member_delete 삭제 성공");
	
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("redirect:/memberList.do");
		return mav;
	}//end
	
}
