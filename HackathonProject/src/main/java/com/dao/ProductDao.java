package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.ProductBean;
import com.util.UserUtil;

public class ProductDao {

	
	public static void Addproduct(ProductBean p) {
		try {
			
		Connection conn=UserUtil.CreateConnection();
		String sql="insert into product(uid,product_category,product_name,product_price,product_desc,product_image,product_deposit,product_weight,seller_number,product_material,product_location,product_color,product_size,product_day,product_originalprice,product_locationurl) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=conn.prepareStatement(sql);
	     	
		pst.setInt(1, p.getUid());
		pst.setString(2, p.getProduct_category());
		pst.setString(3, p.getProduct_name());
		pst.setString(4, p.getProduct_price());
		pst.setString(5, p.getProduct_desc());
		pst.setString(6, p.getProduct_image());
		pst.setString(7, p.getProduct_deposit());
		pst.setString(8, p.getProduct_weight());
		pst.setString(9, p.getSeller_number());
		pst.setString(10, p.getProduct_material());
		pst.setString(11, p.getProduct_location());
		pst.setString(12, p.getProduct_color());
		pst.setString(13, p.getProduct_size());
		pst.setString(14, p.getProduct_day());
		pst.setString(15, p.getProduct_originalprice());
		pst.setString(16, p.getProduct_locationurl());
		pst.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	

	
	public static List<ProductBean> Fetchdetails(int uid){
		
		List<ProductBean> list=new ArrayList<>();
           		
		try {
			Connection conn=UserUtil.CreateConnection();
			String sql="select * from product where uid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, uid);
			ResultSet rst=pst.executeQuery();
			
			while(rst.next()) {
				
				ProductBean p=new ProductBean();
				
				p.setPid(rst.getInt("pid"));
				p.setUid(rst.getInt("uid"));
				p.setProduct_category(rst.getString("product_category"));
				p.setProduct_name(rst.getString("product_name"));
				p.setProduct_price(rst.getString("product_price"));
				p.setProduct_desc(rst.getString("product_desc"));
			    p.setProduct_image(rst.getString("product_image"));
			    
			    p.setProduct_deposit(rst.getString("product_deposit"));
			    p.setProduct_day(rst.getString("product_day"));
			    p.setProduct_originalprice(rst.getString("product_originalprice"));
				p.setProduct_weight(rst.getString("product_weight"));
				p.setSeller_number(rst.getString("seller_number"));
			    p.setProduct_material(rst.getString("product_material"));
			    
			    p.setProduct_location(rst.getString("product_location"));
			    p.setProduct_locationurl(rst.getString("product_locationurl"));
				p.setProduct_color(rst.getString("product_color"));
				p.setProduct_size(rst.getString("product_size"));
			  
			    
			    list.add(p);
			    
			}
			
			
		} catch (Exception e) {
		}
		
		return list;
		
	}
	
	
	 
	public static  ProductBean productinfo(int pid){
           		
		ProductBean p=null;
		try {
			Connection conn=UserUtil.CreateConnection();
			String sql="select * from product where pid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, pid);
			ResultSet rst=pst.executeQuery();
			
			while(rst.next()) {
				
				 p=new ProductBean();
				
				p.setPid(rst.getInt("pid"));
				p.setUid(rst.getInt("uid"));
				p.setProduct_category(rst.getString("product_category"));
				p.setProduct_name(rst.getString("product_name"));
				p.setProduct_price(rst.getString("product_price"));
				p.setProduct_desc(rst.getString("product_desc"));
			    p.setProduct_image(rst.getString("product_image"));
			    
			    p.setProduct_deposit(rst.getString("product_deposit"));
			    p.setProduct_day(rst.getString("product_day"));
			    p.setProduct_originalprice(rst.getString("product_originalprice"));
				p.setProduct_weight(rst.getString("product_weight"));
				p.setSeller_number(rst.getString("seller_number"));
			    p.setProduct_material(rst.getString("product_material"));
			    
			    p.setProduct_location(rst.getString("product_location"));
			    p.setProduct_locationurl(rst.getString("product_locationurl"));
				p.setProduct_color(rst.getString("product_color"));
				p.setProduct_size(rst.getString("product_size"));
			}
		} catch (Exception e) {
	}
		return p;
		
	}
	
	

	public static void Updateproduct(ProductBean p) {
		
		try {
			
			Connection conn=UserUtil.CreateConnection();
			String sql="update product set product_category=?,product_name=?,product_price=?,product_desc=?,product_deposit=?,product_weight=?,seller_number=?,product_material=?,product_location=?,product_color=?,product_size=?,product_day=?,product_originalprice=?,product_locationurl=? where pid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
		     	
			pst.setString(1, p.getProduct_category());
			pst.setString(2, p.getProduct_name());
			pst.setString(3, p.getProduct_price());
			pst.setString(4, p.getProduct_desc());
         			 
            pst.setString(5, p.getProduct_deposit());
			pst.setString(6, p.getProduct_weight());
			pst.setString(7, p.getSeller_number());
			pst.setString(8, p.getProduct_material());
			
			pst.setString(9, p.getProduct_location());
			pst.setString(10, p.getProduct_color());
			pst.setString(11, p.getProduct_size());
			
			
			pst.setString(12, p.getProduct_day());
			pst.setString(13, p.getProduct_originalprice());
			pst.setString(14, p.getProduct_locationurl());
			
			pst.setInt(15, p.getPid());
			pst.executeUpdate();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
	
public static void deleteproduct(int pid) {
		
		try {
			
			Connection conn=UserUtil.CreateConnection();
			String sql="delete from product where pid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
		     	
			pst.setInt(1, pid);			
			pst.executeUpdate();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}



public static List<ProductBean> ShowonShop(){
	
	List<ProductBean> list=new ArrayList<>();
       		
	try {
		Connection conn=UserUtil.CreateConnection();
		String sql="select * from product";
		PreparedStatement pst=conn.prepareStatement(sql);
		ResultSet rst=pst.executeQuery();
		
		while(rst.next()) {
			
			ProductBean p=new ProductBean();
			
			p.setPid(rst.getInt("pid"));
			p.setUid(rst.getInt("uid"));
			p.setProduct_category(rst.getString("product_category"));
			p.setProduct_name(rst.getString("product_name"));
			p.setProduct_price(rst.getString("product_price"));
			p.setProduct_desc(rst.getString("product_desc"));
		    p.setProduct_image(rst.getString("product_image"));
		    
		    p.setProduct_deposit(rst.getString("product_deposit"));
		    p.setProduct_day(rst.getString("product_day"));
		    p.setProduct_originalprice(rst.getString("product_originalprice"));
			p.setProduct_weight(rst.getString("product_weight"));
			p.setSeller_number(rst.getString("seller_number"));
		    p.setProduct_material(rst.getString("product_material"));
		    
		    p.setProduct_location(rst.getString("product_location"));
		    p.setProduct_locationurl(rst.getString("product_locationurl"));
			p.setProduct_color(rst.getString("product_color"));
			p.setProduct_size(rst.getString("product_size"));
		    list.add(p);
		    
		}
		
		
	} catch (Exception e) {
	}
	
	return list;
	}




 public static List<ProductBean> ShowAllElectronics(){
	
	String product_category="electronics";
	List<ProductBean> list=new ArrayList<>();
       	
	try {
		Connection conn=UserUtil.CreateConnection();
		String sql="select * from product where product_category=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, product_category);
		ResultSet rst=pst.executeQuery();
		
		while(rst.next()) {
			
			ProductBean p=new ProductBean();
			
			p.setPid(rst.getInt("pid"));
			p.setUid(rst.getInt("uid"));
			p.setProduct_category(rst.getString("product_category"));
			p.setProduct_name(rst.getString("product_name"));
			p.setProduct_price(rst.getString("product_price"));
			p.setProduct_desc(rst.getString("product_desc"));
		    p.setProduct_image(rst.getString("product_image"));
		    
		    p.setProduct_deposit(rst.getString("product_deposit"));
		    p.setProduct_day(rst.getString("product_day"));
		    p.setProduct_originalprice(rst.getString("product_originalprice"));
			p.setProduct_weight(rst.getString("product_weight"));
			p.setSeller_number(rst.getString("seller_number"));
		    p.setProduct_material(rst.getString("product_material"));
		    
		    p.setProduct_location(rst.getString("product_location"));
		    p.setProduct_locationurl(rst.getString("product_locationurl"));
			p.setProduct_color(rst.getString("product_color"));
			p.setProduct_size(rst.getString("product_size"));
		    list.add(p);
		    
		}
		
		
	} catch (Exception e) {
	}
	
	return list;
	}
 

 public static List<ProductBean> ShowAllClothes(){
	
	String product_category="clothes";
	List<ProductBean> list=new ArrayList<>();
       	
	try {
		Connection conn=UserUtil.CreateConnection();
		String sql="select * from product where product_category=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, product_category);
		ResultSet rst=pst.executeQuery();
		
		while(rst.next()) {
			
			ProductBean p=new ProductBean();
			
			p.setPid(rst.getInt("pid"));
			p.setUid(rst.getInt("uid"));
			p.setProduct_category(rst.getString("product_category"));
			p.setProduct_name(rst.getString("product_name"));
			p.setProduct_price(rst.getString("product_price"));
			p.setProduct_desc(rst.getString("product_desc"));
		    p.setProduct_image(rst.getString("product_image"));
		    
		    p.setProduct_deposit(rst.getString("product_deposit"));
		    p.setProduct_day(rst.getString("product_day"));
		    p.setProduct_originalprice(rst.getString("product_originalprice"));
			p.setProduct_weight(rst.getString("product_weight"));
			p.setSeller_number(rst.getString("seller_number"));
		    p.setProduct_material(rst.getString("product_material"));
		    
		    p.setProduct_location(rst.getString("product_location"));
		    p.setProduct_locationurl(rst.getString("product_locationurl"));
			p.setProduct_color(rst.getString("product_color"));
			p.setProduct_size(rst.getString("product_size"));
		    list.add(p);
		    
		}
		
		
	} catch (Exception e) {
	}
	
	return list;
	}
	
 
  
 public static List<ProductBean> ShowAllTools(){
		
		String product_category="tools";
		List<ProductBean> list=new ArrayList<>();
	       	
		try {
			Connection conn=UserUtil.CreateConnection();
			String sql="select * from product where product_category=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, product_category);
			ResultSet rst=pst.executeQuery();
			
			while(rst.next()) {
				
				ProductBean p=new ProductBean();
				
				p.setPid(rst.getInt("pid"));
				p.setUid(rst.getInt("uid"));
				p.setProduct_category(rst.getString("product_category"));
				p.setProduct_name(rst.getString("product_name"));
				p.setProduct_price(rst.getString("product_price"));
				p.setProduct_desc(rst.getString("product_desc"));
			    p.setProduct_image(rst.getString("product_image"));
			    
			    p.setProduct_deposit(rst.getString("product_deposit"));
			    p.setProduct_day(rst.getString("product_day"));
			    p.setProduct_originalprice(rst.getString("product_originalprice"));
				p.setProduct_weight(rst.getString("product_weight"));
				p.setSeller_number(rst.getString("seller_number"));
			    p.setProduct_material(rst.getString("product_material"));
			    
			    p.setProduct_location(rst.getString("product_location"));
			    p.setProduct_locationurl(rst.getString("product_locationurl"));
				p.setProduct_color(rst.getString("product_color"));
				p.setProduct_size(rst.getString("product_size"));
			    list.add(p);
			    
			}
			
			
		} catch (Exception e) {
		}
		
		return list;
		}
                 
}
	

