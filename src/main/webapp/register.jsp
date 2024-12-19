<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration</title>
    <link rel = "icon" href = ".\images\logo.png">
    <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style>
   body {
            background-image: url('images/banners/img_1.png');
            background-size: cover;       
            background-attachment: fixed; 
            background-position: center;  
            background-repeat: no-repeat; 
            margin: 0;
            padding: 0;
            height: 100vh;     
                      
        }
  
  
  </style>
<!--Internal Stylesheet End-->
  </head>
  <body>
    <section>
    <div class="container_form">
      <span class="big-circle"></span>
      <img src="Images/shape.png" class="square" alt="" />
      <div class="form">
        <div class="contact-info">
          <img src="images/img/img_8.png" width="100%"><br><br>
          <h3 class="title">Let's get in touch</h3>
          <p class="text">
         Content
          </p>

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
                <i class="fa fa-facebook"></i>
              </a>
              <a href="#">
                <i class="fa fa-google"></i>
              </a>
              <a href="#">
                <i class="fa fa-instagram"></i>
              </a>
              <a href="#">
                <i class="fa fa-linkedin"></i>
              </a>
              <a href="#">
                <i class="fa fa-whatsapp"></i>
              </a>
            </div>
          </div>
        </div>

        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form action="RegisterServlet" method ="post" id="registrationForm" autocomplete="on">
            <h3 class="title" style="margin-bottom: 50px;">Register Here</h3>
            <div class="input-container">
              <input type="text" name="fullname" placeholder="Fullname" class="input" required/>
              <label for=""></label>
              <span>Name</span>
            </div>

            <div class="input-container">
              <input type="email" name="email" placeholder="Email" class="input" required/>
              <label for=""></label>
              <!-- <span style="color:#fff; margin-left: 70%;margin-top: 7%;"><a href="#">Verify</a></span> -->
            </div>

            <div class="input-container">
              <input type="password" name="password" placeholder="Password" class="input" required/>
              <label for=""></label>
              <span>Password</span>
            </div>

            <div class="input-container">
              <input type="password" name="cpass" placeholder="Confirm Password" class="input" required/>
              <label for=""></label>
              <span>Confirm</span>
            </div>

            <div class="input-container">
              <input type="tel" name="phone" placeholder="Mobile Number" class="input" required/>
              <label for=""></label>
            </div>

            <div class="input-container">
              <input type="text" name="qualification" placeholder="Qualification" class="input" required/>
              <label for=""></label>
              <span>Qualification</span>
            </div>

            <div class="input-container">
              <input type="date" name="dob" class="input" placeholder="Enter DOB" min="1995-01-01" required/>
              <label for="" style="margin-left: 65%;">DOB</label>
              <span>DOB</span>
            </div>

            <div class="input-container">
              <input type="text" name="father_name" placeholder="Father Name" class="input" required/>
              <label for=""></label>
              <span>Father Name</span>
            </div>

            <div class="input-container">
              <input type="text" name="mother_name" placeholder="Mother Name" class="input" required/>
              <label for=""></label>
              <span>mother Name</span>
            </div>

            <div class="form-group">
                <label for="gender" class="gender_sty">Gender</label>
                <div>
                  <label for="male" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="m"
                      id="male"
                      class="gender_input"
                    required/> Male</label
                  >
                  <label for="female" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="f"
                      id="female"
                      class="gender_input"
                    required/> Female</label
                  >
                  <!-- <label for="others" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="o"
                      id="others"
                    />Others</label
                  > -->
                </div>
              </div>
            <input type="submit" onclick="return validatePassword()" value="Register" class="btn" id="submitBtn"/>
            <h6><a href="login.jsp" style="color: #fff;text-decoration: none;margin-left: 65%;">Login Here</a></h6>

          </form>
        </div>
        <!-- Popup box 
			  <div id="popup" class="popup">
			    <div class="popup-content">
			      <span class="close-btn" id="closeBtn">&times;</span>
			      <p>Registration Successful!</p>
			      <button id="loginBtn">Login Here</button>
			    </div>
			  </div> -->
      </div>
    </div>
  </section>
    
    <!-- dob script in mobile view start -->  
		 <!-- Dynamic DOB Script -->
    <script>
      const dobInput = document.getElementById("dob");

      // Dynamically calculate today's date
      const today = new Date();
      const yyyy = today.getFullYear();
      const mm = String(today.getMonth() + 1).padStart(2, "0");
      const dd = String(today.getDate()).padStart(2, "0");

      // Set min and max attributes
      dobInput.setAttribute("max", `${yyyy}-${mm}-${dd}`);
      dobInput.setAttribute("min", "1995-01-01");

      // Set a placeholder for better UX
      dobInput.placeholder = "Enter DOB";
    </script>
	
		   
<!-- dob script in mobile view stop -->
    
    <script src="app.js"></script>
  </body>
</html>
