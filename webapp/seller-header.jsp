<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

  
    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            
                            
                            
                            <%
                             UserBean u=null;
                                		if(session!=null){
                                			
                                			if(session.getAttribute("u")!=null){
                                				u=(UserBean)session.getAttribute("u");
                                
                             %> 
                              <div class="header__top__right__auth">
                                <a href="seller-changePassword.jsp"><i class="fa fa-edit"></i>seller change password</a>
                            </div>
                             
                             
                             <div class="header__top__right__auth">
                                <a href="logout.jsp"><i class="fa fa-user"></i> Logout</a>
                            </div>
                            
                             
                              
                            <%		}
                                			else{
                                				 %>				 <div class="header__top__right__auth">
                                                 <a href="signup.jsp"><i class="fa fa-user"></i> Sign Up</a>
                                             </div>
                                             <div class="header__top__right__auth">
                                                 <a href="login.jsp"><i class="fa fa-user"></i> Login</a>
                                             </div>
                             <%     				
                                			}
                                		}
                                		 %>	
                           
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="seller-index.jsp">Home</a></li>
                            <li><a href="seller-add-product.jsp">Add Products</a></li>
                            <li><a href="seller-viewproduct.jsp">View Products</a></li>
                           
                        </ul>
                    </nav>
                </div>
              
    </header>
    <!-- Header Section End -->

    
</body>

</html>