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

</head>
<body>
<div class="site-section">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="h3 mb-3 text-black">Sign Up</h2>
        </div>




        <div class="col-md-12	">


				<div class="col-md-12	">

					<%
          
          if(request.getAttribute("msg")!=null){
        	  out.println(request.getAttribute("msg"));
          }
          
          %>

<form action="UserController" method="post">

            <div class="p-3 p-lg-10 border">
              <div class="form-group row">
                <div class="col-md-12">
                  <select name="usertype">
                    <option>----Select option----</option>
                    <option value="buyer">Buyer</option>
                    <option value="seller">Seller</option>
                  </select>
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="name" class="text-black">First Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="fname" name="fname" placeholder="">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="name" class="text-black">Last Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="lname" name="lname" placeholder="">
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-12">
                  <label for="phone" class="text-black">Mobile<span class="text-danger">*</span></label>
                  <input type="phone" class="form-control" id="phone" name="mobile" placeholder="">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="email" class="text-black">Email<span class="text-danger">*</span></label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="text" class="text-black">Address</label>
                  <textarea name="address" id="address" cols="30" rows="7" class="form-control"></textarea>
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="password" class="text-black">Password <span class="text-danger">*</span></label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="">
                </div>
              </div>


              <div class="form-group row">
                <div class="col-md-12">
                  <label for="password" class="text-black"> Confirm Password <span class="text-danger">*</span></label>
                  <input type="password" class="form-control" id="confirmPassword" name="cpassword" placeholder="">
                </div>
              </div>


            </div>
            <div class="form-group row">
              <div class="col-lg-12">
                <input type="submit"  name="action" value="sign up"
                  class="btn btn-primary btn-lg btn-block">
              </div>
            </div>
        </div>
        </form>
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
  
  
  
					<!-- <form action="UserController" method="post">

						<div class="p-3 p-lg-10 border">

							<div class="form-group row">
								<div class="col-md-12">
									<select name="usertype">
										<option>----Select option----</option>
										<option value="buyer">Buyer</option>
										<option value="seller">Seller</option>
									</select>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="fname" class="text-black">First Name <span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="fname" name="fname" placeholder="">
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="password" class="text-black">Last Name <span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="lname" name="lname" placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="c_email" class="text-black">Mobile<span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="phone" name="mobile" placeholder="">
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="password" class="text-black">Email<span
										class="text-danger">*</span></label> <input type="email"
										class="form-control" id="email" name="email" placeholder="">
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="c_message" class="text-black">Address</label>
									<textarea name="address" id="address" cols="30" rows="7"
										class="form-control"></textarea>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="password" class="text-black">Password <span
										class="text-danger">*</span></label> <input type="password"
										class="form-control" id="password" name="password"
										placeholder="">
								</div>
							</div>


							<div class="form-group row">
								<div class="col-md-12">
									<label for="password" class="text-black"> Confirm
										Password <span class="text-danger">*</span>
									</label> <input type="password" class="form-control"
										id="confirmPassword" name="cpassword" placeholder="">
								</div>
							</div>


						</div>
						<div class="form-group row">
							<div class="col-lg-12">
								<input type="submit" name="action" onclick="formData()"
									value="sign up" class="btn btn-primary btn-lg btn-block">
							</div>
						</div>
			
				</form>
			</div>

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
 -->
</body>

<script>
  function formData() {

    // FIRSTNAME
    var fname = document.getElementById("fname").value;
    if (fname == '') {
      alert("Please enter the first name");
    }
    else if (!isNaN(fname)) {
      alert("please enter first name in character only");
    }

    // LASTNAME    
    var lname = document.getElementById("lname").value;
    if (lname == '') {
      alert("Please enter the last name");
    }
    else if (!isNaN(lname)) {
      alert("please enter last name in character only");
    }

    // EMAIL
    var email = document.getElementById("email").value;
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (emailRegex.test(email)) {
      alert("Email is valid!");
    } else {
      alert("Invalid email. Please enter a valid email address.");
    }

    // PHONENUMBER
    var phoneNumber = document.getElementById("phone").value;
    var phoneNumberRegex = /^\d{10}$/;

    if (phoneNumberRegex.test(phone)) {
      alert("Phone number is valid!");
    } else {
      alert("Invalid phone number. Please enter a 10-digit number.");
    }

    // PASSWORD
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var minLength = 8;
    var uppercaseRegex = /[A-Z]/;
    var lowercaseRegex = /[a-z]/;
    var digitRegex = /\d/;
    var specialCharRegex = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/;

    if (
      password.length >= minLength &&
      uppercaseRegex.test(password) &&
      lowercaseRegex.test(password) &&
      digitRegex.test(password) &&
      specialCharRegex.test(password)
    ) {

      if (password === confirmPassword) {
        alert("Password and confirmation are valid!");
      } else {
        alert("Passwords do not match. Please confirm your password.");
      }
    } else {
      alert("Invalid password. Please follow the password criteria.");
    }

    // AADDRESS
    var address = document.getElementById("address").value;

    if (address.trim() !== "") {
      alert("Address is valid!");
    } else {
      alert("Address cannot be empty. Please enter your address.");
    }


  }
</script>
</html>