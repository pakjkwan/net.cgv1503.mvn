package com.spring.web.member;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@SessionAttributes("email")
@Controller
public class MemberController {
	
	@Autowired
	MemberDao memberDao;

	@RequestMapping("/sign_page.do")
	public String sign(Model model) {
		model.addAttribute("email", "");
		return "views/sign/sign_page";
	}
	
	@RequestMapping("/sign_form.do")
	public String sign_form(Model model) {
		model.addAttribute("email", "");
		return "views/sign/sign_form";
	}
	
	@RequestMapping("/login_page.do")
	public String login(Model model) {
		model.addAttribute("email", "");
		return "views/sign/login_page";
	}
	
	@RequestMapping("/movie_chart.do")
	public String reserve(Model model) {
		model.addAttribute("email", "");
		return "views/movie/movie_chart";
	}
	
	@RequestMapping("/reserve.do")
	public String ticket(Model model) {
		model.addAttribute("greeting", "안녕하세요");
		return "views/movie/reserve";
	}
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		model.addAttribute("email", "");
		return "views/main/main";
	}
	
	@RequestMapping("/main2.do")
	public String main2(Model model) {
		model.addAttribute("email", "");
		return "views/main/main2";
	}
	
	@RequestMapping("/sign_succ.do")
	public ModelAndView sign_succ(MemberVo mvo) {
		System.out.println("UserController sign_succ 10:08");
		ModelAndView mav = new ModelAndView();
		
		memberDao.dbInsert(mvo);// dao으로 넘어갑니다
		// String url="/WEB-INF/views/three.jsp";
		mav.addObject("email", mvo.getEmail());
		mav.addObject("passwd", mvo.getPasswd());
		mav.setViewName("views/sign/sign_succ");
		return mav;
	} //insert end
	
	
	@RequestMapping("/member_insert.do")
	public ModelAndView member_insert(MemberVo mvo) {
		System.out.println("UserController member_insert 10:08");
		ModelAndView mav = new ModelAndView();
		
		memberDao.dbInsert(mvo);// dao으로 넘어갑니다
		// String url="/WEB-INF/views/three.jsp";
		mav.addObject("email", mvo.getEmail());
		mav.addObject("passwd", mvo.getPasswd());
		mav.setViewName("redirect:/sign_succ.do");
		return mav;
	} //insert end
	
	/*@RequestMapping("/member_login.do")
	public String member_login(MemberVo mvo,
			@RequestParam("email") String email,
			@RequestParam("passwd") String passwd,
			Model  model,
			ModelAndView mav) {
		System.out.println("[UserController] member_Login: 컨트롤러 접속성공");
		
		String checkEmail = memberDao.userLogin(email);
		
		System.out.println("[userController] 폼에서 읽어온 Email : "+email);
		System.out.println("[userController] 폼에서 읽어온 Passwd : "+passwd);
		System.out.println("[userController] 폼에서 읽어온 CheckEmail : "+checkEmail);
		System.out.println("[userController] 폼에서 읽어온 memberDao.userLogin : "+ memberDao.userLogin(email));
		
		if(checkEmail.equalsIgnoreCase(email)){
			String sendEmail = checkEmail;
			if(checkEmail.equals("admin@cho.net")){
				mav.addObject("email", email);
				System.out.println("mav가뭘까" + email);
			}else{
				mav.addObject("email", email);
				System.out.println("admin이 아닌 경우" + email);
			}
			
		}
		
		System.out.println("로그인 아이디: " + mvo.getEmail());
		System.out.println("로그인 패스워드: " + mvo.getPasswd());
		System.out.println("메인으로 보내줄 값 : " + mav);
	
		mav.setViewName("redirect:/main.do");
		return mav;
	} //insert end
*/	
	@RequestMapping("/member_login.do")
	public ModelAndView member_login(MemberVo mvo,
			@RequestParam("email") String email,
			@RequestParam("passwd") String passwd,
			ModelAndView  model) {
		System.out.println("[UserController] member_Login: 컨트롤러 접속성공");
		
		String checkEmail = memberDao.userLogin(email);
		
		System.out.println("[userController] 폼에서 읽어온 Email : "+email);
		System.out.println("[userController] 폼에서 읽어온 Passwd : "+passwd);
		System.out.println("[userController] 폼에서 읽어온 CheckEmail : "+checkEmail);
		System.out.println("[userController] 폼에서 읽어온 memberDao.userLogin : "+ memberDao.userLogin(email));
		
		if(checkEmail.equalsIgnoreCase(email)){
			String sendEmail = checkEmail;
			if(checkEmail != null && checkEmail.equals("admin@cho.net")){
				model.addObject("email", email);
				System.out.println("email 이 관리자인 경우 :"+email);
				model.setViewName("/views/main/main");
				
			}else if(checkEmail != null && checkEmail != "admin@cho.net"){
				model.addObject("email", email);
				System.out.println("email 이 일반유저인 경우" + email);
				model.setViewName("/views/main/main");
				System.out.println("admin이 아닌 경우" + email);
			}else{
				model.addObject("email", null);
				model.setViewName("/views/user/login_page");
			}
			
		}
		
		System.out.println("로그인 아이디: " + mvo.getEmail());
		System.out.println("로그인 패스워드: " + mvo.getPasswd());
		System.out.println("메인으로 보내줄 값 : " + model);
		
		return model;
	} //insert end

}// class end
