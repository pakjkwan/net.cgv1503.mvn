package com.spring.web.guest;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class GuestDAOImpl extends JdbcDaoSupport implements GuestDAO {
	//spring jdbc�� �ϱ� ���ؼ� JdbcDaoSupportŬ������ ��ӹ޴´�.

	//���� ����
	private static final String GUEST_INSERT="insert into guest33 "
		+" (guest_no,guest_name,guest_title,guest_cont,guest_pwd, "
			+"guest_regdate) values(guest33_no_seq.nextval,?,?,?,?,"
		+"sysdate)";
	
	//static final�� �����ϸ� ������ ���� �����Ҽ� ��� ���ȭ�� ��.
	private static final String GUEST_LIST="select * from guest33 "
			+" order by guest_no desc";
	
	//��ȣ�� �������� ��������(desc)�ϸ鼭 ū���ڰ� ���� ���ĵȴ�.
	private static final String GUEST_COUNT="select count(guest_no) "
			+" from guest33";
	
	//�� ���ڵ� ����
	private static final String GUEST_EDIT="select * from guest33 "
			+" where guest_no=?";
	
	//�۹�ȣ�� �������� ������ �˻�
	private static final String GUEST_EDIT_OK="update guest33 set "
			+" guest_name=?,guest_title=?,guest_cont=?,"
			+"guest_pwd=? where guest_no=?";
	
	//�۹�ȣ�� �������� ������ ����
	private static final String GUEST_DEL_OK="delete from "
			+" guest33 where guest_no=?";
	
	//��ȣ�� �������� ���� ���ڵ� ����
	
	/*���� ���� ���� �����ϱ� ���� Ŭ���� ����*/
	private class GuestEditOk implements PreparedStatementSetter{

		private GuestDTO g;
		
		public GuestEditOk(GuestDTO g){
			this.g=g;
		}
		@Override
		public void setValues(PreparedStatement pstmt) 
				throws SQLException {
		 pstmt.setString(1,this.g.getGuest_name());//1�� ����ǥ�� ������ �̸� ����
		 pstmt.setString(2,this.g.getGuest_title());
		 pstmt.setString(3,this.g.getGuest_cont());
		 pstmt.setString(4,this.g.getGuest_pwd());
		 pstmt.setInt(5,this.g.getGuest_no());
		}		
	}
	
	/*�۹�ȣ�� �������� �˻��� ���ڵ尪�� ������ Ŭ���� ����*/
	private class GuestEditRs implements ResultSetExtractor{

		@Override
		public Object extractData(ResultSet rs) throws SQLException,
				DataAccessException {
		  //extractData()�޼���� �˻� ��� ���ڵ尡 �ϳ��϶��� ȣ��
			if(rs.next()){
				GuestDTO g=new GuestDTO();
			  	g.setGuest_no(rs.getInt("guest_no"));
			  	g.setGuest_name(rs.getString("guest_name"));
			  	g.setGuest_title(rs.getString("guest_title"));
			  	g.setGuest_cont(rs.getString("guest_cont"));
			  	g.setGuest_pwd(rs.getString("guest_pwd"));
			  	g.setGuest_hit(rs.getInt("guest_hit"));
			  	g.setGuest_regdate(rs.getString("guest_regdate"));
			  	return g;
			}else{
			return null;
			}
		}		
	}
	
	/*�۹�ȣ ���� Ŭ���� ����*/
	private class GuestEditKey implements PreparedStatementSetter{

		private int no;
		
		public GuestEditKey(int no){
			this.no=no; //�۹�ȣ�� ����
		}
		@Override
		public void setValues(PreparedStatement pstmt) 
				throws SQLException {
			pstmt.setInt(1,no);//1�� ����ǥ�� �۹�ȣ�� ����			
		}		
	}
	
	/*�� ���ڵ� ������ �����ϱ� ����  Ŭ���� ����*/
	private class GuestCount implements ResultSetExtractor{

		@Override
		public Object extractData(ResultSet rs) throws SQLException,
				DataAccessException {
			/*
			 * extractData()�߻�޼��� ��?
			 * 1. �� �޼���� select���� ���ؼ� �Ѱ� ���ڵ尪�� �˻��ɶ�
			 * ����Ѵ�. �Ѱ� �̻� ���ڵ� ���� ��ȯ �ɶ��� ������ �ʴ´�.
			 */
			int count=0;//�� ���ڵ� ������ �����ϱ� ���� ����
			
			if(rs.next()){//�˻� ���ڵ尪�� ���� ���
				count=rs.getInt(1);//�� ���ڵ� ������ ����
				return count;
			}
			return null;			
		}				
	}
	
	/*�Խù� ����� ������ Ŭ���� ���� */
	private class GuestList implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int rowNum)
				throws SQLException {
		/*
		 * mapRow()�߻�޼��� ����
		 * 1.������ �� select�� �Ѵ��� ��ȯ�� ���ڵ� ���� ������ŭ ȣ��ȴ�.
		 * �� ���ڵ� ���� 3���� 3�� ȣ���Ѵٴ� ��
		 * 2.�ϳ��̻��� ���ڵ带 ��ȯ�ؼ� �÷������� ��ȯ�Ҷ��� �� �޼��带
		 * ȣ���ؾ� �Ѵ�.
		 */
			GuestDTO g=new GuestDTO();
			g.setGuest_no(rs.getInt("guest_no"));
			g.setGuest_name(rs.getString("guest_name"));
			g.setGuest_title(rs.getString("guest_title"));
			g.setGuest_cont(rs.getString("guest_cont"));
			g.setGuest_hit(rs.getInt("guest_hit"));
			g.setGuest_pwd(rs.getString("guest_pwd"));
			g.setGuest_regdate(rs.getString("guest_regdate"));
			return g;
		}		
	}
	
	/*���� ������ Ŭ���� ����*/
	private class GuestForInsert implements PreparedStatementSetter{

		private GuestDTO g;
		
		public GuestForInsert(GuestDTO g){
			this.g=g;
		}
		@Override
		public void setValues(PreparedStatement pstmt) 
				throws SQLException {
			//���ڵ尪 �����ϴ� �޼���
	      pstmt.setString(1,this.g.getGuest_name());//1����ǥ�� �̸� ����
          pstmt.setString(2,this.g.getGuest_title());
          pstmt.setString(3,this.g.getGuest_cont());
          pstmt.setString(4,this.g.getGuest_pwd());
		}		
	}
	
	@Override
	public void insertGuest(GuestDTO g) {
		//���� ����
		getJdbcTemplate().update(GUEST_INSERT,
				new GuestForInsert(g));
		//�޼��� ù��° ������ڴ� �������� �����ϴ� ���
		//�ι�° ������ڴ� ���ڸ� ȣ���ؼ� ������ ���ڵ尪
		//������� 1���ڸ� ���ڸ� ȣ��
	}

	@Override
	public List<GuestDTO> getGuestList() {
		//���� ���
		return getJdbcTemplate().query(GUEST_LIST,new GuestList());
		//ù��° ������ڴ� �������� ����� ���
		//�ι�° ������ڴ� �������� ������ ���ڵ尪�� �����ϱ� ���� ����
		//ȣ��κ�
	}

	@Override
	public int listCount() {
		//�ѷ��ڵ� ����
		return getJdbcTemplate().query(GUEST_COUNT,new GuestCount());
	}

	@Override
	public GuestDTO getGuestCont(int no) {
		//������
		return (GuestDTO)getJdbcTemplate().query(
				GUEST_EDIT,new GuestEditKey(no),new GuestEditRs());
		//ù��° ������ڴ� ������
		//�ι�° ������ڴ� �Ƕ���ͷ� �Ѿ�� �۹�ȣ�� ���ڸ� ȣ���ؼ� ������ ��
		//����° ������ڴ� �۹�ȣ�� �������� ���� ����
		//�˻��� ��� ������ ��
	}

	@Override
	public void guestEdit(GuestDTO eg) {
		//���� ����
		getJdbcTemplate().update(GUEST_EDIT_OK,new GuestEditOk(eg));
		//ù��° ������ڴ� �������� ����Ǵ� ���
		//�ι�° ������ڴ� �Ƕ���ͷ� �Ѿ�� ���� ���� ȣ���ؼ� �����ϴ�
		//�κ�
	}

	@Override
	public void deleteGuest(int no) {//���� ����
		getJdbcTemplate().update(GUEST_DEL_OK,new GuestEditKey(no));
		//ù��° ������ڴ� �������� ����� ���
		//�ι�° ������ڴ� �Ƕ���ͷ� �Ѿ�� �۹�ȣ�� ����
	}
}
