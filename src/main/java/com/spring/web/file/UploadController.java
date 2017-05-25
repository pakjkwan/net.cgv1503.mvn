package com.spring.web.file;

import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;

import com.spring.web.global.Command;
import com.spring.web.global.SimpleCommandFactory;
import com.spring.web.item.ItemVo;

/*import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;*/

@Controller("/control/upload.do")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;  
    ItemVo ivo = new ItemVo();   
	
  
   /* protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirectory = request.getServletContext().getRealPath("/");
		MultipartRequest mul = new MultipartRequest(request, 
				saveDirectory, 
				5*1024*1024, "utf-8" ,new DefaultFileRenamePolicy());

		String imgName = mul.getFilesystemName("imgName");
		System.out.println("저장된 imgName :"+imgName);
		if(imgName != null){
			ivo.setImgName(imgName);
		}
		
		ItemDao.getInstance().uploadImg(ivo);
		String itemName = mul.getParameter("itemName");
		if(itemName != null){
			ivo.setItemName(itemName);
			System.out.println("품명"+itemName);
		}
		String sPrice = mul.getParameter("price");
		if(sPrice !=null){
			
			System.out.println("가격"+sPrice);
			int price = Integer.parseInt(sPrice);
			ivo.setPrice(price);
		}
		String pdDate = mul.getParameter("pdDate");
		if(pdDate !=null){
			
			ivo.setPdDate(pdDate);
			System.out.println("생산일"+pdDate);
		}
		String sCapa = mul.getParameter("capa");
		if(sCapa != null){
			
			int capa = Integer.parseInt(sCapa);
			ivo.setCapa(capa);
			System.out.println("용량 :"+capa);
		}
		
		String description = mul.getParameter("description");
		if(description != null){
			ivo.setDescription(description);
			System.out.println("설명 :"+ description);
		}
		String pdOrg = mul.getParameter("pdOrg");
		if(pdOrg != null){
			
			ivo.setPdOrg(pdOrg);
			System.out.println("원산지 :"+pdOrg);
		}
		String saleType = mul.getParameter("saleType");
		if(saleType != null){
			
			ivo.setSaleType(saleType);
			System.out.println("판매용"+saleType);
		}
	
		String cateName = mul.getParameter("cateName");
		if(cateName != null){
			
			System.out.println("카테고리 :"+cateName);
			ivo.setCateName(cateName);
		}
		ItemDao.getInstance().insertItem(ivo);
		
		request.setAttribute("list", ItemDao.getInstance().getItemList());
		request.setAttribute("result", "reg_item");
		process(request, response, "main");
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/views/item/main.jsp");
		dis.forward(request, response);
	}
	public void multiPartUpload (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirectory = request.getServletContext().getRealPath("saveDirectory");
		try {
			MultipartRequest mul = new MultipartRequest(request, 
					saveDirectory, 5 * 1024 * 1024, "UTF-8", 
					new DefaultFileRenamePolicy());
			Enumeration<?> files = mul.getFileNames();
			while (files.hasMoreElements()) {
				String file = (String) files.nextElement();
				String fileName = mul.getFilesystemName(file);
				String oFileName = mul.getOriginalFileName(file);
				request.setAttribute("fileName", fileName);
				request.setAttribute("oFileName", oFileName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/

}
