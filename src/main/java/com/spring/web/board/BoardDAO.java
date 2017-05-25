package com.spring.web.board;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoardDAO {
	//iBatis=> SqlMapClientTemplate클래스=> Medial파일 dao문서
	//MyBatis=> SqlSessionTemplate클래스=>getter/setter
	@Autowired
	private  SqlSessionTemplate  sqlSession;
	
	public void  dbInsert(BoardDTO dto){
		try{
			System.out.println("\nBoardDAO.java dbInsert(BoardDTO)" );
	    	sqlSession.insert("boardAdd", dto);
			System.out.println("BoardDAO.java 저장성공  12:22  3:25 ") ;
		}catch(Exception ex){ 
			System.out.println("저장실패: " + ex.toString()) ;
		}
	}//end
	
	public  List<BoardDTO>  dbSelect( ){
		List<BoardDTO> list = sqlSession.selectList("boardSelectAll");
		System.out.println("BoardDAO [ dbSelect 값 : ]" + list);
		System.out.println("BoardDAO.java dbISelect(BoardDTO) 완료" );
		return list ;
	}//end
	
	public  BoardDTO  dbDetail(int idx ){
		BoardDTO  dto = sqlSession.selectOne("boardDetail", idx);
		System.out.println("[BoardDAO] dbDetail DB에서 가져온 dto 값 :" + dto);
		return dto ;
	}//end
	
	public  BoardDTO  dbDelete(int idx ){
		BoardDTO  dto = sqlSession.selectOne("boardDelete", idx);
		System.out.println("[BoardDAO] dbDelete DB에서 가져온 dto 값 :" + dto);
		return dto ;
	}//end
	
	
}//class END





