package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserUtil {

	
	public static Connection CreateConnection() {
		
		Connection conn=null;
		try {
	
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon_project","root","");
		    	
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return conn;
	}
	
}
