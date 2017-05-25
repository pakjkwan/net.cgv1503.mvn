package com.spring.web.member;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDao {
	//iBatis=> SqlMapClientTemplate클래스=> Medial파일 dao문서
	//MyBatis=> SqlSessionTemplate클래스=>getter/setter
	@Autowired
	private  SqlSessionTemplate  sqlSession;
	
	

	public void dbInsert(MemberVo Mvo){
		try{
			System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
	    	sqlSession.insert("joinMember", Mvo);
			System.out.println("BoardDAO.java 저장성공  12:22  3:25 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end
	
	public  List<MemberVo> dbSelect( ){
		List<MemberVo> list = sqlSession.selectList("selectAllMembers");
		System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
		return list ;
	}//end
	
	public  MemberVo dbDetail(String email ){
		MemberVo  dto = sqlSession.selectOne("detailMember", email);
		System.out.println("\nBoardDAO.java dbDetail(BoardDTO)" );
		return dto ;
	}//end
	
	public void dbDelete(String email ){
		sqlSession.delete("deleteMember", email);
		System.out.println("\nBoardDAO.java dbDelete(BoardDTO) 삭제성공" );		
	}//end

	public void dbEdit(MemberVo mvo){
		try{
			System.out.println("\nBoardDAO.java dbEdit(BoardDTO)" );
	    	sqlSession.update("editMember", mvo);
			System.out.println("BoardDAO.java dbEdit(BoardDTO) 수정성공 ") ;
		}catch(Exception ex){ 
			ex.printStackTrace();
		}
	}//end

	public String userLogin(String email) {
		String checkEmail = "";
		
			System.out.println("MemberDAO 에 있음" );
			System.out.println("MemberDAO 에 있음 넘어온 Email값 : " + email  );
			checkEmail = sqlSession.selectOne("loginMember", email);
			System.out.println("memberVo 로긴 성공 ") ;
			System.out.println("MeberDAO DB조회 값" + checkEmail);
			
		return checkEmail;
	}
	
	
}//class END





