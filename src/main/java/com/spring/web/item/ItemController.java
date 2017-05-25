package com.spring.web.item;


import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.web.global.Command;
import com.spring.web.global.SimpleCommandFactory;


@Controller
public class ItemController {
	
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;
	
	@Autowired
	ItemDao itemDao;
	
	@RequestMapping(value="/itemInsert.do")
	public String item_Insert(
			@RequestParam("item_name")String item_name,
			@RequestParam("cate_name")String cate_name,
			@RequestParam("img_name")String img_name
			){
		System.out.println("ItemController Item_Insert(Model) 10:08");
		ItemVo ivo = new ItemVo();
		System.out.println("item_name :"+ item_name);
		System.out.println("img_name :"+ img_name);
		System.out.println("cate_name :"+ cate_name);
		ivo.setItem_name(item_name);
		ivo.setImg_name(img_name);
		ivo.setCate_name(cate_name);
		System.out.println("[ItemController] 이미지네임 :"+img_name);
		itemDao.itemInsert(ivo);
		String url="itemList.do";
		return "redirect:" + url;
	}
	
	@RequestMapping("/itemList.do")
	public String item_list(Model  model){     
		
		ItemVo ivo = new ItemVo();
		List<ItemVo> list = itemDao.itemList();
		model.addAttribute("list", list);
		
		List<ItemVo> itemImgList = itemDao.itemImgList();
		System.out.println("ItemController item_img_list:" + "담기 직전" );
		model.addAttribute("itemImgList", itemImgList);
		
		String url="/views/movie/movie_chart";
		return url;
	 }//end
	

	
	@RequestMapping("/itemImgList.do")
	public ModelAndView item_img_list(ModelAndView mav){
		System.out.println("ItemController item_img_list:" + "진입" );
		List<ItemVo> itemImgList = itemDao.itemImgList();
		Iterator<ItemVo> it = itemImgList.iterator();
		while(it.hasNext()){
			String el = it.next().toString();
			System.out.println("ItemCont 아이템 이미지 :" + el);
		}
		System.out.println("ItemController item_img_list:" + "담기 직전" );
		mav.addObject("itemImgList", itemImgList);
		
		return mav;
	}
	
	@RequestMapping("/itemMain.do")
	public ModelAndView main(ModelAndView mav){
		mav.setViewName("views/item/main");
		return mav;
	}
	
	@RequestMapping("/myseat.do")
	public ModelAndView myseat(ModelAndView mav){
		mav.setViewName("views/movie/myseat");
		return mav;
	}
	
	@RequestMapping("/itemDetail.do")
	public ModelAndView detail(
			ModelAndView mav,
			@RequestParam("item_no")int itemNo){
		ItemVo ivo = new ItemVo();
		ivo.setItem_no(itemNo);
		mav.addObject("itemDetail", itemDao.itemDetail(itemNo));
		mav.setViewName("views/item/main");
		return mav;
	}

	@RequestMapping("/itemSearch.do")
	public ModelAndView search(ModelAndView mav,
			@RequestParam("keyword") String keyword){
		
		mav.addObject("itemDetail", itemDao.itemSearch(keyword));
		mav.setViewName("views/item/main");
		return mav;
	}
	
}
