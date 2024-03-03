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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>
<body>






	<div class="site-section">
		<div class="container">

			<div class="row mb-5">
				<div class="col-md-12 order-1">






					<div class="row align">
						<div class="col-md-12 mb-5">
							<div class="float-md-left">
								<h2 class="text-black h5">Shop All</h2>
							</div>

						</div>
					</div>



					<div class="row mb-5">
						<%
						List<ProductBean> list = ProductDao.ShowonShop();

						for (ProductBean p : list) {
						%>

						<%-- <div style="background:white " class="col-lg-4 col-md-6 item-entry mb-4">
            <a href="shop-details.jsp?pid=<%=p.getPid()%>" class="product-item md-height d-block">
              <img src="product_image/<%=p.getProduct_image()%>" alt="Image" class="img-fluid">
            </a>
            <h2 style="font-size:20px ;font-weight:600;font-family:Amazon Ember, Arial, sans-serif;" class="item-title"><a href="#"><%=p.getProduct_name() %></a></h2>
            <strong style="font-size:18px ;font-family:Amazon Ember, Arial, sans-serif;"class="item-price">RENTIT AT JUST : <%=p.getProduct_price() %>Rs</strong>
          </div> --%>
						<div class="card"
							style="width: 25rem; margin: 20px; display: flex; justify-content: center; align-items: center">
							<img style="height: 100%; max-height: 500px"
								src="product_image/<%=p.getProduct_image()%>"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="#"><%=p.getProduct_name()%></a>
								</h5>
								<p class="card-text"><%=p.getProduct_desc()%></p>
								<p class="card-text"><%=p.getProduct_price()%>
									Rs
								</p>
								<a href="shop-details.jsp?pid=<%=p.getPid()%>"
									class="btn btn-primary">Details</a>
							</div>
						</div>
						<%
						}
						%>
					</div>


				</div>

			</div>

		</div>
	</div>


	<footer class="site-footer custom-border-top">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
					<h3 class="footer-heading mb-4">Promo</h3>
					<a href="#" class="block-6"> <img src="images/about_1.jpg"
						alt="Image placeholder" class="img-fluid rounded mb-4">
						<h3 class="font-weight-light  mb-0">Rent Product Which You
							Like!!</h3>

					</a>
				</div>
				<div class="col-lg-5 ml-auto mb-5 mb-lg-0">
					<div class="row d-flex justify-content-center">
						<div class="col-md-12 text-center">
							<h3 class="footer-heading mb-4">Quick Links</h3>
						</div>
						<div class="col-md-6 col-lg-4">
							<ul class="list-unstyled">
								<li><a href="Clothes-shop.jsp">Qualities Cloths</a></li>
								<li><a href="Electronics-shop.jsp">Electronics</a></li>
								<li><a href="Tools-shop.jsp">Tools</a></li>
								<li><a href="index.jsp">Shop more</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-4">
							<ul class="list-unstyled">
								<li><a href="contact.jsp">Contact Us</a></li>
								<li><a href="Wishlist-grid.jsp">Wishlist</a></li>
								<li><a href="#">Social Media</a></li>
							</ul>
						</div>

					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="block-5 mb-5">
						<h3 class="footer-heading mb-4">Contact Info</h3>
						<ul class="list-unstyled">
							<li class="address">203, Jain Complex, Gurukul,
								Ahmedabad-380052</li>
							<li class="phone"><a href="tel://9974373574">+919974373574</a></li>
							<li class="email">rentit@gmail.com</li>
						</ul>
					</div>

				</div>
			</div>
			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<p>
						Copyright &copy;
						<script>
								document.write(new Date().getFullYear());
							</script>
						All rights reserved
					</p>
				</div>
			</div>
		</div>
	</footer>

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