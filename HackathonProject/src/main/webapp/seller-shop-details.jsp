<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="seller-header.jsp"%>
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
                      <div class="col-md-4">
                        <img src="product_image/<%=p.getProduct_image()%>" alt="Image" class="img-fluid">
                      </div>
                      <div class="col-md-8">
                        <h5 class="card-title">
                          <%=p.getProduct_name() %>
                        </h5>
                        <p class="card-text">
                          Price : <%=p.getProduct_price() %>
                        </p>
                        <p class="card-text">
                          Deposit :<%=p.getProduct_deposit() %>
                        </p>
                        <p class="card-text">
                          Days For Rent :<%=p.getProduct_day() %> 
                        </p>
                        <p class="card-text">
                          Original price :<%=p.getProduct_originalprice() %> 
                        </p>
                        <p class="card-text">
                          Material :<%=p.getProduct_material() %>
                        </p>
                        <p class="card-text">
                          Weight :<%=p.getProduct_weight() %>
                        </p>
                        <p class="card-text">
                          Color :<%=p.getProduct_color() %>
                        </p>
                        <p class="card-text">
                          Size :<%=p.getProduct_size() %>
                        </p>
                        <p class="card-text">
                          Contact No :<a href="tel://<%=p.getSeller_number() %>"><%=p.getSeller_number() %></a>
                        </p>
                        <p class="card-text">
                          Location :<a href="<%=p.getProduct_locationurl() %>"><%=p.getProduct_location() %></a>
                        </p>
                        <p class="card-text">
                         Description :<%=p.getProduct_desc() %>
                        </p>
                        <p class="card-text">
                          <small class="text-muted">Last updated 3 mins ago</small>
                        </p>

                       <a href="seller-product-edit.jsp?pid=<%=p.getPid() %>"
									class="btn btn-black rounded-0">EDIT</a>
								<a href="seller-product-delete.jsp?pid=<%=p.getPid() %>"
									class="btn btn-black rounded-0">DELETE</a>
                      </div>
                    </div>
                  </div>
                </div>
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