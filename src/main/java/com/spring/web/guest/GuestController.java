package com.spring.web.guest;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class GuestController {//���� ��Ʈ��
	@Autowired
	private GuestDAO guestService;	
	//�������̽��� ���۷��� ���� ������ �����ϴ�.
	@Autowired
	private Guest2DAO guestService2;
	
    public void setGuestService(GuestDAO guestService) {
		this.guestService = guestService;
	}//spring DI ����    

    public void setGuestService2(Guest2DAO guestService2) {
		this.guestService2 = guestService2;
	}//spring DI ����    

	 /*���� ���*/
	 @RequestMapping(value="/guest_list.do")
	 public ModelAndView guest_list(HttpServletRequest request,
		 HttpServletResponse response) throws Exception{
	 
		 int count=this.guestService.listCount();
		 //�� ���ڵ� ����
		 List<GuestDTO> guestList=this.guestService.getGuestList();
		 //���� ����� �����´�.
		 
		 Map listModel=new HashMap();
		 listModel.put("guestList",guestList);
		 //guestListŰ�� ���� ����� ����
		 
		 ModelAndView listM=new ModelAndView();
		 listM.setViewName("views/guest/guest_list");
		 //guest����� guest_list.jsp������ ����
		 listM.addAllObjects(listModel);
		 //���� ��ϰ��� ������ �ؽ��� �÷��� ��ü�� �� �ص� �信 �����Ų��.
		 listM.addObject("total_count", count);
		 //total_countŰ���� �� ���ڵ� ������ ����
		 return listM;
	 }

	/*���� �۾��� ��*/
	@RequestMapping(value="/guest_write.do")
	public String guest_write(){
		return "views/guest/guest_write";
		//guest����� guest_write.jsp ���������� ����
	}	
		
	/* ���� ����*/
	@RequestMapping(value="/guest_write_ok.do",method=RequestMethod.POST)
	 public ModelAndView guest_write_ok(HttpServletRequest request,
			 HttpServletResponse response)
	throws Exception{
		String guest_name=request.getParameter("guest_name").trim();
		String guest_title=request.getParameter("guest_title").trim();
		String guest_cont=request.getParameter("guest_cont").trim();
		String guest_pwd=request.getParameter("guest_pwd").trim();
		
		GuestDTO g=new GuestDTO();
		g.setGuest_name(guest_name); g.setGuest_title(guest_title);
		g.setGuest_cont(guest_cont); g.setGuest_pwd(guest_pwd);
		
		this.guestService.insertGuest(g);//����޼��� ȣ��
		
		response.sendRedirect("guest_list.do");
		return null;
	  }
	 
	 /*���� ���뺸��*/
	 @RequestMapping(value="/guest_cont.do")
	 public ModelAndView guest_cont(HttpServletRequest request,
			 HttpServletResponse response)  
	 throws Exception{
		int no=Integer.parseInt(request.getParameter("no"));
		System.out.println("[GuestContoller] = List에서 넘어온 숫자 " + no);
		//get������� �Ѿ�� �۹�ȣ�� parseInt()�� ���ؼ� ������ ���ڷ� �ٲ㼭 ����
		System.out.println("[GuestContoller] = Detail 접속");
		
		System.out.println("[GuestContoller] = Guest2DAO 조회성공");
		/*this.guestService2.hitUpdate(no);//��ȣ�� �������� ��ȸ�� ����
		System.out.println("[GuestContoller] = Guest2DAO 조회수 정보: " + no);
		
	    //��ȣ�� �ش��ϴ� ���� ������ ���� ���� �����´�.
	     */				     
		GuestDTO g=guestService2.getCont(no);		
		System.out.println("[GuestContoller] = Guest2DAO 디테일 정보 조회 성공" + g);
		ModelAndView contM=new ModelAndView("views/guest/guest_cont");
		contM.addObject("g",g);
		//gŰ���� ����
		return contM; 
	 } 
	 
	 /*���� ������*/
	 @RequestMapping(value="/guest_edit.do")
	 public ModelAndView guest_edit(HttpServletRequest request,
			 HttpServletResponse response)
	 throws Exception{
		 int no=Integer.parseInt(request.getParameter("no"));
		 
		 GuestDTO g=this.guestService.getGuestCont(no);
		 //��ȣ�� �������� ���� ���� ������ ������.
		 
		 ModelAndView editM=new ModelAndView("views/guest/guest_edit");
		 editM.addObject("editg",g);
		 //editgŰ���� ����
		 return editM;
	 }
	 
	 /*���� ����*/
	 @RequestMapping(value="/guest_edit_ok.do",method=RequestMethod.POST)
	 public ModelAndView guest_edit_ok(HttpServletRequest request,
			 HttpServletResponse response) throws Exception{
	     response.setContentType("text/html;charset=UTF-8");
	     PrintWriter out=response.getWriter();
	     //��½�Ʈ�� ��ü ��
		 int no=Integer.parseInt(request.getParameter("no"));
	     String guest_name=request.getParameter("guest_name").trim();
	     String guest_title=request.getParameter("guest_title").trim();
	     String guest_cont=request.getParameter("guest_cont").trim();
	     String guest_pwd=request.getParameter("guest_pwd").trim();
	     
	     GuestDTO db_pwd=this.guestService.getGuestCont(no);
	     if(db_pwd.getGuest_pwd().equals(guest_pwd)){//����� ���ٸ�
	    	 GuestDTO eg=new GuestDTO();
	    	 eg.setGuest_no(no); eg.setGuest_name(guest_name);
	    	 eg.setGuest_title(guest_title);
	    	 eg.setGuest_cont(guest_cont);
	    	 eg.setGuest_pwd(guest_pwd);
	    	 
	    	 this.guestService.guestEdit(eg);//���� �޼��� ȣ��
	    	 
	    	 response.sendRedirect("guest_cont.do?no="+no);
	    	 }else{
	    	 out.println("<script>");
	    	 out.println("alert('��й�ȣ�� �ٸ��ϴ�!')");
	    	 out.println("history.go(-1)");
	    	 out.println("</script>");
	     }
		 return null;
	 }
	 
	 /*���� ������*/
	 @RequestMapping(value="/guest_del.do")
	 public ModelAndView guest_del(HttpServletRequest request,
			 HttpServletResponse response) 
	        throws Exception{
		 
		 int no=Integer.parseInt(request.getParameter("no"));
		 //get������� �Ѿ�� �۹�ȣ�� ������ ���ڷ� �ٲ㼭 ����
		 
		 ModelAndView delM=new ModelAndView("views/guest/guest_del");
		 //guest����� guest_del.jsp�� ����
		 delM.addObject("no",no);
		 //noŰ���� ��ȣ���� ����
		 return delM;
	 }
	 
	 /*���� ����*/
	 @RequestMapping(value="/guest_del_ok.do",method=RequestMethod.POST)
	 public ModelAndView guest_del_ok(HttpServletRequest request,
			 HttpServletResponse response) 
	 throws Exception{
		 response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out=response.getWriter();
		 
		 int no=Integer.parseInt(request.getParameter("no"));
		 String del_pwd=request.getParameter("del_pwd").trim();
		 GuestDTO db_pwd=this.guestService2.getCont(no);
		 
		 if(db_pwd.getGuest_pwd().equals(del_pwd)){
			 this.guestService.deleteGuest(no);
			 //��ȣ�� �������� ���ڵ带 ����
			 response.sendRedirect("guest_list.do");
		 }else{//����� �ٸ��ٸ�
			 out.println("<script>");
			 out.println("alert('����� �ٸ��ϴ�!')");
			 out.println("history.go(-1)");
			 out.println("</script>");
		 }
		 return null;
	 }
}
