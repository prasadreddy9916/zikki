<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Welcome to Zikki</title>
	<link rel = "icon" href = ".\images\sapl logo.png">
    <link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style type="text/css">
   
 
  </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light sticky-top customnav" style="font-size:15px;background-color: #fff;" >
  <a class="navbar-brand" href="#">
    <!-- &emsp;&emsp;<img src=".\images\sapl logo.png" height="40" > -->
    <h2 style="color:#053aa4"><b>ZIKKI</b></h2>
</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse customdrop" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a style="color:black; font-size:15px" class="nav-link" href="#">
          <b style="color:#053aa4">Dashboard</b><span class="sr-only">(current)</span></a>
      </li>

       <li class="nav-item  dropdown">
         <a style="color:#053aa4 ; font-size:15px" class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <b style="color:#053aa4">Time Tracker</b> </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
           <a class="dropdown-item" href="#" style="color:#053aa4"><b>Tracks study time per domain</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Time spent on classes, materials, and assignments</b></a>
        </div> 
        </li>

        <!-- <li class="nav-item  dropdown">
         <a style="color:#053aa4 ; font-size:15px" class="nav-link dropdown-toggle " href="services.php" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <b style="color:#053aa4">Search</b> </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
           <a class="dropdown-item" href="#" style="color:#053aa4"><b>Global Search across all domains</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Allows searching for classes, materials, or instructors</b></a>
        </div> 
        </li> -->

        <li class="nav-item  dropdown">
         <a style="color:#053aa4 ; font-size:15px" class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <b style="color:#053aa4">Domains</b> </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Java</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b> Cyber Security</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Data Analysis</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>SQL</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Session</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Discussion Sections</b></a>
          
        </div> 
        </li>

        <li class="nav-item  dropdown">
         <a style="color:#053aa4 ; font-size:15px" class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <b style="color:#053aa4">Notifications</b> </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>New Sessions</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Deadlines</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>new resources and important</b></a>
        </div> 
        </li>

        <li class="nav-item">
         <a style="color:black; font-size:15px" class="nav-link" href="#">
          <b style="color:#053aa4">About</b><span class="sr-only">(current)</span></a>
      </li>

       <li class="nav-item  dropdown">
         <a style="color:#053aa4 ; font-size:15px" class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <b style="color:#053aa4">Help & Support</b> </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>FAQs</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Tutorials on app usage</b></a>
          <a class="dropdown-item" href="#" style="color:#053aa4"><b>Contact</b></a>
        </div> 
        </li>

      <li class="nav-item">
        <a style="color:black; font-size:15px" class="nav-link" href="login.jsp">
          <b style="color:#053aa4">Login/Logout</b><span class="sr-only">(current)</span></a>
      </li>

     </ul>

  </div>
</nav>

<!-- banner starts ---->

      <div class="fullwidth-section">
          <div class="card" id="me">
            <img src="images\home\banner3.webp" width="100%">
            <div class="card-img-overlay" id="se">
            <h2 id="colbyb" style="color:#f7512c;"><b> Zikki Education</b></h2>
            </div>
          </div>
      </div>
<!--- banner stop ---->

<!--- Domains container starts ---->

      <div class="container">
        <h3 class="our_domains">Our Domains</h3>
            <div class="row">
    <!-- Java Service Card -->
              <div class="col-md-5 service-card">
                <center>
                <div class="">
                  <div class="service-icon">
                    <img src="images/home/java_1.png" height="200" width="200">
                  </div>
                  <div class="service-title">Java</div>
                  <div class="service-description">Enterprise-grade backend and web solutions.</div>
                </div>
              </center>
              </div>
              <div class="col-md-1"></div>
     <!-- cyber security Service Card -->          
              <div class="col-md-5 service-card">
                <center>
                <div class="">
                  <div class="service-icon">
                    <img src="images/home/cyber_security.png" height="200" width="200">
                  </div>
                      <div class="service-title">Cyber Security</div>
                  <div class="service-description">Responsive and user-friendly web designs.</div>
                </div>
              </center>
              </div>
              <div class="col-md-1"></div>
     <!-- data analysis Service Card -->
              <div class="col-md-5 service-card">
                <center>
                <div class="">
                  <div class="service-icon">
                    <img src="images/home/data_analysis.webp" height="200" width="200">
                  </div>
                      <div class="service-title">Data Analysis</div>
                  <div class="service-description">Safeguard your data and systems with us.</div>
                </div>
              </center>
              </div>
              <div class="col-md-1"></div>
     <!-- sql Service Card -->          
              <div class="col-md-5 service-card">
                <center>
                <div class="">
                  <div class="service-icon">
                    <img src="images/home/sql.png" height="200" width="200">
                  </div>
                  <div class="service-title">SQL</div>
                      <div class="service-description">Enterprise-grade backend and web solutions.</div>
                </div>
              </center>
              </div>
              <div class="col-md-1"></div>

            </div>
          </div>

<!--- Domains container stop ---->

<!--- footer start ---->
<footer id="footer">
<br>
<div class="container-fluid" id="foo">
    <div class="row" >
        <div class="col-lg-3">
            <br>
                 <!-- <p><img src=".\images\sapl footer logo.png" alt="logo"></p> -->
                 <h3 style="margin-left:25%;margin-top: 10%;">ZIKKI</h3>
        </div>
        <div class="col-lg-3">
            <br>

            <h3 class="colbyf">QUICK LINKS</h3>


            <div class="textwidget">
                <ul>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">HOME</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">ABOUT US</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">SERVICES</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">DOMAINS</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">CONTACT US</a></h6>
                </ul>
            </div>

        </div>

        <div class="col-lg-3">
            <br>
            <h3 class="colbyf">OUR Domains</h3>
            <div class="textwidget">
                 <ul>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">Sql</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">Java</a></h6>
                    <h6 id="linespacingfooter"><a href="#" ="color:#fff;font-size:14px">Cyber Security</a></h6>
                    <h6 id="linespacingfooter"><a href="#" style="color:#fff;font-size:14px">Data Analysis</a></h6>
                </ul>
            </div>
        </div>

        <div class="col-lg-3">
            <br>
            <h3 class="colbyf">LOCATION</h3>
            <div class='column dt-sc-one-fourth ' id="foo">
              <ul>
                <h6 id="linespacingfooter"></h6>
                <h6 id="linespacingfooter"></h6>style
                <h6 id="linespacingfooter"></h6>
                <h6 id="linespacingfooter"> Hyderabad,Telanaga,India.</h6>
                <h6 id="linespacingfooter">Email: zikki@gmail.com</h6>
                <h6 id="linespacingfooter">Phone: +91 9090909090, +91 000000000</h6>
              </ul>
          </div>
             </div>
              </div>

    <center><h6 style="font-size: 12px;">Copyright © 2024-2025 Zikki Education</h6> </center>
    
    </div>
</footer> 
<!--- footer start ---->

</body>
</html>