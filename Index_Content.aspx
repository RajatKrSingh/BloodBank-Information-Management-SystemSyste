<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index_Content.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
    <!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="owl-carousel owl-carousel1 owl-carousel-fullwidth fh5co-light-arrow animate-box" data-animate-effect="fadeIn">
		<div class="item"><a href="images/pic2.png" class="image-popup"><img src="images/pic2.png" alt="image"></a></div>
		<div class="item"><a href="images/pic3.png" class="image-popup"><img src="images/pic3.png" alt="image"></a></div>
	</div>

	<div id="fh5co-intro-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>Donate Blood.Save Lives.</h2>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-intro-section -->
	<div id="fh5co-common-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>Join us in our humble endeavour</h2>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-6 col-sm-6 services-num services-num-text-right">
                        <img src="images/Capture.png"  class="img-responsive"/>
                        <img src="images/Capture1.png"  class="img-responsive"/>
					</div>
					<div class="col-md-6 col-sm-6 services-num">
						<div class="desc">
                            <p><h3 style="color:black"><strong>Login</strong></h3></p>
                            <p>
							    <asp:Label ID="Label1" runat="server" Text="Label" Font-Italic="true" ForeColor="DarkRed">UserID</asp:Label>
                                <br /><asp:TextBox ID="UserId" runat="server"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Label" Font-Italic="true" ForeColor="DarkRed">Password</asp:Label>
                                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="Label3" runat="server" Font-Italic="true" Font-Size="Small" Font-Bold="true" Visible="false" Text="*Incorrect UserId or Password" ForeColor="IndianRed"></asp:Label>
                            </p>
                            <asp:Button ID="Button1" runat="server" Text="Access"  Font-Bold="true" BorderStyle="Solid" OnClick="Button1_Click"  />
						    <br /><a href="Register_Content.aspx" style="font-size:small"> Not a member already?Come Register</a>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-common-section -->
	<div class="fh5co-parallax" style="background-image: url(images/hero-1.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						<h1><strong>Immediate need of blood?</strong></h1>
						<h2><a href="PostRequirements_Content.aspx">Post Your Requirements</a></h2>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-parallax -->
	<div id="fh5co-featured-work-section">
		<div class="container-fluid">
			<div class="heading-section text-center">
				<h2>Our Recent Projects</h2>
			</div>
			<div class="owl-carousel owl-carousel2">
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="images/portfolio_pic1.jpg" alt="image">
					<a href="#" class="pop-up-overlay text-center">
						<div class="desc">
							<h3>Annual Blood Drive</h3>
							<span>Video</span>
						</div>
					</a>
				</div>
				<div class="item">
					<img src="images/portfolio_pic2.jpg" alt="image">
					<a href="#" class="pop-up-overlay pop-up-overlay-color-2 text-center">
						<div class="desc">
							<h3>Research and Development</h3>
							<span>Illustration</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="images/portfolio_pic3.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-3 text-center">
						<div class="desc">
							<h3>Blood Bank</h3>
							<span>Services</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="images/portfolio_pic4.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay pop-up-overlay-color-4 text-center">
						<div class="desc">
							<h3>Staff and Doctors</h3>
							<span>Pictures</span>
						</div>
					</a>
				</div>
				<div class="item">
					<!-- <a href="#" class="image-popup"> -->
					<img src="images/portfolio_pic5.jpg" alt="image">
					<!-- </a> -->
					<a href="#" class="pop-up-overlay text-center">
						<div class="desc">
							<h3>Donors</h3>
							<span>Card</span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-featured-work-section -->
	<div id="fh5co-blog-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>Recent Blog</h2>
			</div>
			<div class="row">
				<div class="col-md-4 blog-section">
					<span>11 <small>August 2017</small></span>
					<h3><a href="#">Breakthrough in Stem Cell Research</a></h3>
					<p>Our team led by Mr. Manish Shankar performed stem cell treatment.</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
				<div class="col-md-4 blog-section">
					<span>02 <small>July 2017</small></span>
					<h3><a href="#">Blood Donor Requirements</a></h3>
					<p>The Dos and Donts for ever blood donor. Take care before donating</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
				<div class="col-md-4 blog-section">
					<span>23 <small>June 2017</small></span>
					<h3><a href="#">Expansion of BloodInsured</a></h3>
					<p>A new center is being established in Mumbai and will be functional by Mid-December 2017.</p>
					<a class="btn btn-primary" href="#">Read More</a>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-blog-section -->
	<footer>
		<div id="footer" class="fh5co-border-line">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center">
						<p>Copyright 2017 BloodInsured Inc. All Rights Reserved. <br>Made with <i class="icon-heart3 love"></i> by Rajat and team. </p>
						<p class="fh5co-social-icons">
							<a href="#"><i class="icon-twitter-with-circle"></i></a>
							<a href="#"><i class="icon-facebook-with-circle"></i></a>
							<a href="#"><i class="icon-instagram-with-circle"></i></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

</asp:Content>

