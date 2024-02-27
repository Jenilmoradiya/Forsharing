package com.controller;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.swing.Action;


import com.bean.UserBean;

import com.dao.UserDao;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String action=request.getParameter("action");

	if(action.equalsIgnoreCase("Sign Up")) {
		
		Boolean flagBoolean=UserDao.CheckEmail(request.getParameter("email"));
		
		if(flagBoolean ==false) {
			
			if(request.getParameter("password").equals(request.getParameter("cpassword"))) {
			
		UserBean u=new UserBean();
		
		u.setFname(request.getParameter("fname"));
		u.setLname(request.getParameter("lname"));
		u.setEmail(request.getParameter("email"));
		u.setMobile(request.getParameter("mobile"));
		u.setAddress(request.getParameter("address"));
		u.setPassword(request.getParameter("password"));
		
		
	     UserDao.SignUp(u);
	     response.sendRedirect("login.jsp");
	}
			else {

				request.setAttribute("msg", "Password and Confirm Password doesnt match");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			}
      }
		else {
			
			request.setAttribute("msg", "Email already Registerd");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
	}
	
	
	
	
	
	}
	
 }


