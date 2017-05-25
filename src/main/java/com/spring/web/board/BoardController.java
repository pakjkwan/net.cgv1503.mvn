package com.spring.web.board;

import javax.servlet.ServletContext;

import  java.io.*;//File 
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
    @Autowired
	ServletContext  application;
	
	@Autowired
	BoardDAO  dao;
	
	@RequestMapping("/board.do")
	public String about(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/board/board_list";
	}
	
	@RequestMapping("/board_form.do")
	public String  board_form(  ){
	  System.out.println("InsertController.java board_form(  )");	
	  String url="/views/board/main";	
	  return url ;
	}//end
	
	@RequestMapping("/board_adminForm.do")
	public String  board_adminForm(  ){
	  System.out.println("InsertController.java board_adminForm(  )");	
	  String url="/views/board/admin_main";	
	  return url ;
	}//end
	
	
	@RequestMapping("/board_insertform.do")
	public String  board_inertform(  ){
	  System.out.println("InsertController.java board_form(  )");	
	  String url="/views/board/board_form";	
	  return url ;
	}//end
	
	@RequestMapping("/board_insert.do")
	public ModelAndView  board_insert(BoardDTO dto ,@RequestParam("hobby") String[ ] msg){     
		System.out.println("board_insert(BoardDTO dto) 10:08");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온이름: " + dto.getName());
		System.out.println("넘어온제목: " + dto.getTitle());
		System.out.println("넘어온내용: " + dto.getContent());
		System.out.println("넘어온성별: " + dto.getGender());
		
		StringBuffer sb = new StringBuffer( );
		for(String h: msg){  sb.append(h).append(" "); }
		System.out.println("넘어온취미: " + sb.toString());
		System.out.println("넘어온취미: " + dto.getHobby());
		
		String img_file_name="";
		try{
			String path=application.getRealPath("upload");
			img_file_name= dto.getUpload_f().getOriginalFilename(); //MultipartFile클래스에서 제공되는 메소드
			File file = new File( path, img_file_name);
			dto.getUpload_f().transferTo(file); //MultipartFile클래스에서 제공되는 메소드	
			System.out.println("넘어온그림: " + img_file_name);
		}catch(Exception ex){ }
		
		
		dto.setHobby(sb.toString());
		dto.setHobby(dto.getHobby());
		dto.setImg_file_name(img_file_name);
		dao.dbInsert(dto);//dao으로 넘어갑니다 
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("redirect:/board_form.do");
		return mav;
	}//end
	
	@RequestMapping("/board_delete2.do")
	public ModelAndView  board_delete(BoardDTO dto ,@RequestParam("hobby_idx") int hobby_idx){     
		System.out.println("board_delete 진입");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온 hobby_idx: " + hobby_idx);
		
		dao.dbDelete(hobby_idx);

		System.out.println("board_delete 삭제성공");
		
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("redirect:/board_form.do");
		return mav;
	}//end
	
	@RequestMapping("/board_detail.do")
	public ModelAndView  board_detail(BoardDTO dto ,@RequestParam("hobby_idx") int hobby_idx){     
		System.out.println("board_detail 진입");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온 hobby_idx: " + hobby_idx);
		
		BoardDTO data = dao.dbDetail(hobby_idx);
		mav.addObject("naver", data);
		
		System.out.println("넘어온이름: " + data.getName());
		System.out.println("넘어온제목: " + data.getTitle());
		System.out.println("넘어온내용: " + data.getContent());
		System.out.println("넘어온성별: " + data.getGender());
		System.out.println("넘어온취미: " + data.getHobby());
		System.out.println("board_detail 조회성공");
		
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("/views/board/board_detail");
		return mav;
	}//end
	
	@RequestMapping("/board_adminDetail.do")
	public ModelAndView  board_adminDetail(BoardDTO dto ,@RequestParam("hobby_idx") int hobby_idx){     
		System.out.println("board_detail 진입");
		ModelAndView  mav = new  ModelAndView( );
		//이름,제목,내용,성별,취미,파일 데이타받기  해결
		System.out.println("넘어온 hobby_idx: " + hobby_idx);
		
		BoardDTO data = dao.dbDetail(hobby_idx);
		mav.addObject("naver", data);
		
		System.out.println("넘어온이름: " + data.getName());
		System.out.println("넘어온제목: " + data.getTitle());
		System.out.println("넘어온내용: " + data.getContent());
		System.out.println("넘어온성별: " + data.getGender());
		System.out.println("넘어온취미: " + data.getHobby());
		
		System.out.println("board_AdminDetail 조회성공");
		
		//String url="/WEB-INF/views/three.jsp";
		mav.setViewName("/views/board/board_adminDetail");
		return mav;
	}//end
	
	
}//class end
