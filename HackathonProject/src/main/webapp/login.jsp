<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RentIT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
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
            <h2 class="h3 mb-3 text-black">Login</h2>
          </div>
       
          
          <div class="col-md-12	">

   
           <%
          
          if(request.getAttribute("msg")!=null){
        	  out.println(request.getAttribute("msg"));
          }
          
          %>

            <form action="UserController" method="post">
              
              <div  class="p-3 p-lg-10 border">
               
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="c_email" class="text-black">Email <span class="text-danger">*</span></label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="">
                  </div>
                </div>
               
               <div class="form-group row">
                  <div class="col-md-12">
                    <label for="password" class="text-black">Password <span class="text-danger">*</span></label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="">
                  </div>
                </div>
               
               
         
                </div>
                <div class="form-group row">
                  <div class="col-lg-12">
                    <input type="submit"  class="btn btn-primary btn-lg btn-block" name="action" value="login">
                  </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-lg-12">
                   <a href="forgotPassword.jsp">  <input type="button" class="btn btn-primary btn-lg btn-block" name="action" value="Forgot Password"> </a>
                  </div>
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
    
  </body>
  
   <script>
      function formData() {
        // EMAIL
        var email = document.getElementById("email").value;
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (emailRegex.test(email)) {
          alert("Invalid email. Please enter a valid email address.");
        }

        // PASSWORD
        var password = document.getElementById("password").value;
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
          alert("Invalid password. Please follow the password criteria.");
        }
      }
    </script>
    
</html>