<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="icon" href=".\\images\\sapl logo.png">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");
      body {
          background-image: url('images/login/img_4.png');
          background-size: cover;       
          background-attachment: fixed; 
          background-position: center;  
          background-repeat: no-repeat; 
          margin: 0;
          padding: 0;
          height: 100vh;               
      }
    </style>
  </head>
  <body>
    <!-- login form section -->
    <section>
      <div class="container_form">
        <span class="big-circle"></span>
        <img src="Images/shape.png" class="square" alt="" />
        
        <div class="form">
          <div class="contact-info">
            <h3 class="title">Let's get in touch</h3>
            <p class="text">Content</p>

            <div class="info">
              <div class="information">
                <img src="Images/location.png" class="icon" alt="" />
                <p>Address</p>
              </div>
              <div class="information">
                <img src="Images/email.png" class="icon" alt="" />
                <p>Email Id</p>
              </div>
              <div class="information">
                <img src="Images/phone.png" class="icon" alt="" />
                <p>Contact Number</p>
              </div>
            </div>

            <div class="social-media">
              <p>Connect with us :</p>
              <div class="social-icons">
                <a href="#">
                  <i class="fa fa-facebook-f" style="color:#fff"></i>
                </a>
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                  <i class="fa fa-instagram"></i>
                </a>
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </div>
            </div>
          </div>

          <!-- login form content -->
          <div class="contact-form">
            <span class="circle one"></span>
            <span class="circle two"></span>
           <form action="LoginServlet" method="post" autocomplete="on">
  <h3 class="title">Login Here</h3>

  <!-- Email Field -->
  <div class="input-container">
    <input type="email" name="email" placeholder="Email" class="input" required />
    <span>Email</span>
  </div>

  <!-- Password Field -->
  <div class="input-container">
    <input type="password" name="password" placeholder="Password" class="input" required />
    <span>Password</span>
  </div>

  <!-- Login Button and Error Message -->
  <div style="display: flex; align-items: center;">
    <input type="submit" value="Login" class="btn" style="margin-right: 10px;" />
    <span style="color: red;">
      <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) { 
          out.print(errorMessage);
        } 
      %>
    </span>
  </div>

  <!-- Forgot Password Link -->
  <h6 class="forgot_password" style="color: #fff;">
    <a href="forgotPassword.jsp" style="color: #fff; text-decoration: none;">Forgot Password?</a>
  </h6>

  <!-- Create Account Link -->
  <h6 class="create_acc">
    <a href="register.jsp" style="color: #fff; text-decoration: none;">Create new account</a>
  </h6>
</form>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
