package com.spring.web.guest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class Guest2DAO {//����Ŭ ��� ���� Ŭ����
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	DataSource ds=null;
	String sql=null;
	
	public Guest2DAO(){
		try{
	     Context ctx=new InitialContext();
	     ds=(DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/*���� ���뺸��*/
	public GuestDTO getCont(int no){
		GuestDTO g=null;
		try{
			con=ds.getConnection();//����Ŭ ��� ���� ��ü�� ��
			sql="select * from guest33 where guest_no=?";
			pstmt=con.prepareStatement(sql);//������ ���� ��ü�� ��
			System.out.println("[Guest2DAO] getCont Sql문에서 가져온 데이터"+pstmt);
			pstmt.setInt(1,no);//1�� ����ǥ�� ��ȣ�� ����
			rs=pstmt.executeQuery(); //������ ����
			if(rs.next()){
			  g=new GuestDTO();
			  g.setGuest_no(rs.getInt("guest_no"));
			  g.setGuest_name(rs.getString("guest_name"));
			  g.setGuest_title(rs.getString("guest_title"));
			  g.setGuest_cont(rs.getString("guest_cont"));
			  g.setGuest_pwd(rs.getString("guest_pwd"));
			  g.setGuest_hit(rs.getInt("guest_hit"));
			  g.setGuest_regdate(rs.getString("guest_regdate"));
			}			
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return g;
	}

	
}








