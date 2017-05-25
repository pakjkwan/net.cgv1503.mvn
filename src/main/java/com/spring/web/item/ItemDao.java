package com.spring.web.item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ItemDao {
	
	@Autowired
	private  SqlSessionTemplate  sqlSession;
	
	public void itemInsert(ItemVo ivo){
		try{			
			sqlSession.insert("itemInsert", ivo);
			System.out.println("ItemDAO itemInsert  : " + ivo );
		}catch(Exception ex){ 
			ex.printStackTrace();
		}		
	}
	public List<ItemVo> itemList(){
		List<ItemVo> list = sqlSession.selectList("itemList");
		System.out.println("ItemDAO itemList : " + list );
		return list ;
	}
	
	public int getTotalCount(){
		int count = sqlSession.selectOne("getitemCount");
		System.out.println("ItemDAO getTotalCount : " + count );
		return count ;
	}
	public ItemVo itemDetail(int idx ){
		System.out.println("ItemDao - idx :"+idx);
		ItemVo  ivo = sqlSession.selectOne("itemDetail", idx);
		System.out.println("ItemDAO itemDetail : " + ivo );
		return ivo;
	}
	public ItemVo itemSearch(String keyword){
		System.out.println("ITEM -DAO keyword : " + keyword);
		Map map = new HashMap();
		map.put("keyword", keyword);
		ItemVo ivo = sqlSession.selectOne("itemSearch",map);
		return ivo;
	}
	/*public List<ItemVo> getItemSearch(Command command){
		List<ItemVo> list = new ArrayList<ItemVo>();
		ItemVo ivo = new ItemVo();
		try {
			String sql = "select * from item ";
			sql += "\n where ? = ?";
			pst = cn.prepareStatement(sql);
			pst.setString(1, command.getKeyField());
			pst.setString(2, command.getKeyword());
			rs = pst.executeQuery();
			while(rs.next()){
				ivo.setCapa(rs.getInt("capa"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setItemName(rs.getString("item_name"));
				ivo.setPrice(rs.getInt("price"));
				ivo.setDescription(rs.getString("description"));
				ivo.setPdOrg(rs.getString("pd_org"));
				ivo.setSaleType(rs.getString("sale_type"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setPdDate(rs.getString("pd_date"));
				ivo.setImgName(rs.getString("img_name"));
			
				list.add(ivo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}*/
	public int itemCount(){
		int  itemCount = sqlSession.selectOne("getitemCount");
		System.out.println("ItemDAO itemCount : " + itemCount );
		return itemCount ;
	}
	public void uploadImg(ItemVo ivo) {
		// TODO Auto-generated method stub
		
	}
	public List<ItemVo> itemImgList() {
		List<ItemVo> list = sqlSession.selectList("itemImgList");
		System.out.println("ItemDAO itemImgList : " + list );
		return list ;
	}
	
	
}
