package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.bean.ProductBean;
import com.dao.ProductDao;

@WebServlet("/ProductController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, maxFileSize = 1024 * 1024 * 512, maxRequestSize = 1024 * 1024 * 512) // 512MB
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    System.out.println(cd);//form-data; name="product_image"; filename="shoes1.jpg"
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
	
	 if(action.equalsIgnoreCase("Add product") ) {
		 
		 

			String savePath = "C:\\Users\\jenil\\eclipse-workspace\\HackathonProject\\src\\main\\webapp\\product_image";   
			File fileSaveDir=new File(savePath);
	        if(!fileSaveDir.exists()){
	            fileSaveDir.mkdir();
	        }
	        Part file1 = request.getPart("product_image");
		 	String fileName=extractfilename(file1);
		    file1.write(savePath + File.separator + fileName);
		    String filePath= savePath + File.separator + fileName ;
		    
		    String savePath2 = "C:\\Users\\jenil\\eclipse-workspace\\HackathonProject\\src\\main\\webapp\\product_image";
	        File imgSaveDir=new File(savePath2);
	        if(!imgSaveDir.exists()){
	            imgSaveDir.mkdir();
	        }
	        
	        
	        
	        
		 
	        ProductBean p=new ProductBean();
	        
	        p.setUid(Integer.parseInt(request.getParameter("uid")));
	        p.setProduct_category(request.getParameter("product_category"));
	        p.setProduct_name(request.getParameter("product_name"));
	        p.setProduct_price(request.getParameter("product_price"));
	        p.setProduct_desc(request.getParameter("product_desc"));
	        p.setProduct_image(fileName);
	        p.setProduct_deposit(request.getParameter("product_deposit"));
	        p.setProduct_day(request.getParameter("product_day"));
	        p.setProduct_originalprice(request.getParameter("product_originalprice"));
	        p.setProduct_weight(request.getParameter("product_weight"));
	        p.setProduct_material(request.getParameter("product_material"));
	        p.setProduct_location(request.getParameter("product_location"));
	        p.setProduct_locationurl(request.getParameter("product_locationurl"));
	        p.setProduct_color(request.getParameter("product_color"));
	        p.setSeller_number(request.getParameter("seller_number"));
	        p.setProduct_size(request.getParameter("product_size"));
	        ProductDao.Addproduct(p);
	        request.setAttribute("msg", "Product Added Successfully");
	        request.getRequestDispatcher("seller-add-product.jsp").forward(request, response);
	        
	 }
	
	
	 else if(action.equalsIgnoreCase("update product"))
	 {
		 

	        ProductBean p=new ProductBean();
	        p.setPid(Integer.parseInt(request.getParameter("pid")));
	        p.setUid(Integer.parseInt(request.getParameter("uid")));
	        p.setProduct_category(request.getParameter("product_category"));
	        p.setProduct_name(request.getParameter("product_name"));
	        p.setProduct_price(request.getParameter("product_price"));
	        p.setProduct_desc(request.getParameter("product_desc"));
	        p.setProduct_deposit(request.getParameter("product_deposit"));
	        p.setProduct_day(request.getParameter("product_day"));
	        p.setProduct_originalprice(request.getParameter("product_originalprice"));
	        p.setProduct_weight(request.getParameter("product_weight"));
	        p.setProduct_material(request.getParameter("product_material"));
	        p.setProduct_location(request.getParameter("product_location"));
	        p.setProduct_locationurl(request.getParameter("product_locationurl"));
	        p.setProduct_color(request.getParameter("product_color"));
	        p.setSeller_number(request.getParameter("seller_number"));
	        p.setProduct_size(request.getParameter("product_size"));
	        ProductDao.Updateproduct(p);
	        request.setAttribute("msg", "Product Updated Successfully");
	        request.getRequestDispatcher("seller-viewproduct.jsp").forward(request, response);
	        
	 }	 
	 
	
	}

}
