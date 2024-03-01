<%@page import="com.dao.WishlistDao"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>RentIT</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>





	<%
  int pid=Integer.parseInt(request.getParameter("pid"));

   ProductBean p=ProductDao.productinfo(pid);
  %>

	 <div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<!-- Image on the left side -->
					<div class="col-md-4">
						<img src="product_image/<%=p.getProduct_image()%>"
							alt="Product Image" class="img-fluid">
					</div>
					<!-- Description on the right side -->
					<div class="col-md-8">
						<h5 class="card-title"><%=p.getProduct_name() %></h5>
						<p class="card-text">
							Price :<%=p.getProduct_price() %></p>
						<p class="card-text">
							Deposit :<%=p.getProduct_deposit() %></p>
						<p class="card-text">
							Days For Rent :<%=p.getProduct_day() %></p>
							<p class="card-text">
							Original price :<%=p.getProduct_originalprice() %></p>
							<p class="card-text">
							Material :<%=p.getProduct_material() %></p>
						<p class="card-text">
							Weight :<%=p.getProduct_weight() %></p>
						<p class="card-text">
							Color :<%=p.getProduct_color() %></p>
						<p class="card-text">
							Size :<%=p.getProduct_size() %></p>

						<p class="card-text">
							Contact no.<a href="tel://<%=p.getSeller_number() %>" ><%=p.getSeller_number() %></a></p>
						<p class="card-text">
							Location :
							<a href="<%=p.getProduct_locationurl() %>" ><%=p.getProduct_location() %></a></p>
						<p class="card-text">
							Description :
							<%=p.getProduct_desc() %></p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
						<%
                    if(u!=null ){                           
                   
                     
                     
                      Boolean boolflag=WishlistDao.checkwislist(p.getPid(), u.getUid());
                    
                    if(boolflag==false){
                      
           %>
						<a
							href="AddToWishlist.jsp?pid=<%=p.getPid() %>&uid=<%=u.getUid()%>"
							class="btn btn-black rounded-0">Add To Wishlist</a>

						<%     }
                    else{
                    	  %>
						<a
							href="RemoveFromWishlist.jsp?pid=<%=p.getPid()%>&uid=<%=u.getUid()%>"
							class="btn btn-black rounded-0 ">remove from wishlist</a>

						<%   	
                     }
                    }
             else{
                  %>
						<a href="login.jsp" class="btn btn-black rounded-0">Login</a>
						<%
                    }                   
                   %>

					</div>
				</div>
			</div>
		</div>
	</div>
 
	<!-- Bootstrap JS and dependencies (optional) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


	<%-- <footer class="site-footer custom-border-top">
		<div class="container">
			<div class="row">

					<div class="col-lg-4 col-md-6 item-entry mb-4">
					<a href="seller-shop-details.jsp?pid=<%=p.getPid()%>"
						class="product-item md-height  d-block"> <img
						src="product_image/<%=p.getProduct_image()%>" alt="Image"
						class="img-fluid">
					</a>
				</div> 


				<div class="col-lg-7 ml-auto mb-7 mb-lg-0">
					<div class="row">
						<div class="col-md-12">
							<h3 class="footer-heading mb-4"><%=p.getProduct_name() %></h3>

						</div> 
						<div class="col-md-12 col-lg-12">
							<ul class="list-unstyled">


								<li><h3 class="item-price">
										Price :
										<%=p.getProduct_price() %></h3></li>

								<li><h3 class="item-price">
										Deposit :
										<%=p.getProduct_deposit() %></h3></li>
								<li><h3 class="item-price">
										Material :
										<%=p.getProduct_material() %></h3></li>

								<li><h3 class="item-price">
										Weight :
										<%=p.getProduct_weight() %></h3></li>
								<li><h3 class="item-price">
										Color :
										<%=p.getProduct_color() %></h3></li>

								<li><h3 class="item-price">
										Size :
										<%=p.getProduct_size() %></h3></li>
								<li><h3 class="item-price">
										Contact No. :
										<%=p.getSeller_number() %></h3></li>

								<li><h3 class="item-price">
										Location :
										<%=p.getProduct_location() %></h3></li>
								<li><h3 class="item-price">
										Description :
										<%=p.getProduct_desc() %></h3></li>
 --%>
	<%-- <%
                    if(u!=null ){                           
                   
                     
                     
                      Boolean boolflag=WishlistDao.checkwislist(p.getPid(), u.getUid());
                    
                    if(boolflag==false){
                      
           %>
								<a
									href="AddToWishlist.jsp?pid=<%=p.getPid() %>&uid=<%=u.getUid()%>"
									class="btn btn-black rounded-0">Add To Wishlist</a>

								<%     }
                    else{
                    	  %>
								<a
									href="RemoveFromWishlist.jsp?pid=<%=p.getPid()%>&uid=<%=u.getUid()%>"
									class="btn btn-black rounded-0 ">remove from wishlist</a>

								<%   	
                     }
                    }
             else{
                  %>
								<a href="login.jsp" class="btn btn-black rounded-0">Login</a>
								<%
                    }                   
                   %>
 --%>
	<!-- 
							</ul>
						</div>

					</div>
				</div>


			</div>

		</div>
	</footer>
	</div> -->

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>
</html>