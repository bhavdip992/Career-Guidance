<%@page import="java.sql.*;" %>
<%! String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10; %>
<%
 String s=(String)session.getAttribute("user");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:uregister");
    Statement st=con.createStatement();
    
    ResultSet rs=st.executeQuery("select * from register where Email_ID='"+s+"'  ");
    
    if(rs.next())
    {
        s1=rs.getString(1);
        s2=rs.getString(2);
        s3=rs.getString(3);
         s4=rs.getString(4);
        s5=rs.getString(5);
        s6=rs.getString(6);
         s7=rs.getString(7);
        s8=rs.getString(8);
        s9=rs.getString(9);
         s10=rs.getString(10);
       
      
    }
    
    
    %>
    <html>
        <head><title>Profile &mdash; Career Guidance.co </title>
        	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
        <body> 
            <div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="site">www.careerguidance.com</p>
						<p class="num">Call: +91 7048525286 </p>
						<ul class="fh5co-social">
							<li><a href="www.facebook.com"><i class="icon-facebook2"></i></a></li>
							<li><a href="http://twitter.com"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-dribbble2"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
                                            <div id="fh5co-logo"><a href="index.html"><i class="icon-study"></i>career <span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="courses.html">Other Courses</a></li>
							<li><a href="teacher.html">Teacher</a></li>
							<li><a href="about.html">About US</a></li>
                                                    
							<li class="has-dropdown">
								<a href="blog.html">Course Category<span class="icon">
							<i class="icon-arrow-down"></i>
						</span></a>
								<ul class="dropdown">
									<li><a href="#">After 10th</a></li>
									<li><a href="#">After 11th & 12th</a></li>
									<li><a href="#">After College</a></li>
									<li><a href="#">feedback</a></li>
								</ul>
							</li>
							<li><a href="contact.html">Contact</a></li>
							<li class="btn-cta"><a href="userlog.html"><span>LogOut</span></a></li>
                                                        
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	
		<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(images/15-1.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1 class="heading-section">Your Profile</h1>
									<h2> Made by <a href="http://career guidance.co/" target="_blank">Career Guidance.co</a></h2>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>
            <div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
           

        
        <center>
          <h2>Your Profile</h2>
    <table border="2">
        <tr>
            <td><b>  <h3>&nbsp;&nbsp;Register Type:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s1);%>&nbsp;&nbsp;</td>
        </tr>
       
        <tr>
            <td><b><h3>&nbsp;&nbsp;User Name:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s2);%>&nbsp;&nbsp;</td>
        </tr>
        
         <tr>
            <td><b><h3>&nbsp;&nbsp;Password:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s3);%>&nbsp;&nbsp;</td>
        </tr>
        
         
         <tr>
            <td><b><h3>&nbsp;&nbsp;Gender:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s4);%>&nbsp;&nbsp;</td>
        </tr>
        
         <tr>
            <td><b><h3>&nbsp;&nbsp;Email ID:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s5);%>&nbsp;&nbsp;</td>
        </tr>
        
         
         <tr>
            <td><b><h3>&nbsp;&nbsp;Contact:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s6);%>&nbsp;&nbsp;</td>
        </tr>
        
         <tr>
            <td><b><h3>&nbsp;&nbsp;Select Stream:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s7);%>&nbsp;&nbsp;</td>
        </tr>
        
         <tr>
            <td><b><h3>&nbsp;&nbsp;Address:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s8);%>&nbsp;&nbsp;</td>
        </tr>
         <tr>
            <td><b><h3>&nbsp;&nbsp;City:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s9);%>&nbsp;&nbsp;</td>
        </tr>
        
         <tr>
            <td><b><h3>&nbsp;&nbsp;Zip Code:&nbsp;&nbsp;</h3></b></td>
            <td>&nbsp;&nbsp;<% out.println(s10);%>&nbsp;&nbsp;</td>
        </tr>
         
    </table>
        </center>
        <footer id="fh5co-footer" role="contentinfo" style="background-image: url(images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3  fh5co-widget">
					<h3>About Education</h3>
					<p>the best Education with our Best Teachers.</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learning</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Course</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Learn &amp; Grow</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Blog</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Engage us</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Marketing</a></li>
						<li><a href="#">Visual Assistant</a></li>
						<li><a href="#">System Analysis</a></li>
						
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1 fh5co-widget">
					<h3>Legal</h3>
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2016 online career guidance. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://careerguidance.co/" target="_blank">career guidance.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> &amp; <a href="https://www.pexels.com/" target="_blank">Pexels</a></small>
					</p>
				</div>
			</div>
            
                </body>
                </html>

