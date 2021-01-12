<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About_Content.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Blood Bank</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">
	<script src="js/modernizr-2.6.2.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="fh5co-parallax" style="background-image: url(images/hero-1.jpg);" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
					<div class="fh5co-intro fh5co-table-cell">
						<h1 class="text-center">About Us</h1>
						<p>Made by the team at BloodInsured</p>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end: fh5co-parallax -->
	<div id="fh5co-common-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>Who we are</h2>
			</div>
			<div class="row about">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-6 col-sm-6 services-num services-num-text-right">
						<span class="number-holder">Ǝ</span>
						<div class="desc">
							<h3>Mission</h3>
							<p>To provide the highest quality blood and stem cell products and related medical and consultative services to hospitals and patients primarily in the Karnataka region.</p>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 services-num">
						<span class="number-holder">E</span>
						<div class="desc">
							<h3>Vision</h3>
							<p>To achieve our mission and be recognized for saving and improving lives in our community with safe and reliable blood and innovative cell therapies.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row about">
				<div class="col-md-10 col-md-offset-1">
					<img class="img-responsive" src="images/rawImage.jpg" alt="About"/>
				</div>
				<div class="col-md-10 col-md-offset-1">
					<p>BloodInsured is a not-for-profit charitable organization which provides “lifesaving services” through access to safe blood and cellular products and, facilitation of stem cell, solid organ and tissue transplantation for all patients in need. We also work with the community to provide advocacy, education and specific interventions in the area of health and related areas</p>
					<blockquote>
					  <p>“It is always a pleasure to work with BloodInsured for blood donation camp.Would like to hold more such camp. Team is quite professional and handles the events themselves. Nice Work.”</p>
                      <p style="text-align: right">--Snehil Verma <br /> Director,GenMed</p>
					</blockquote>
					<p>Emphasis on 100% voluntary blood donation, and stringent donor selection. We at BloodInsured take all necessary precautions to ensure that out blood is properly tagged and stored to allow future ease of access and availablity. Though our regular drives and awareness campaigns we aim to spread awareness and attract more donors.</p>
				</div>
			</div>
			<div class="heading-section text-center">
				<h2>Our Team</h2>
			</div>
			<div class="row about">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-6 col-sm-6">
						<div class="team-section-grid" style="background-image: url(images/author-6.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>Rajat Kumar Singh</h3>
									<span>Chief Executive Officer</span>
									<p>A true pioneer in innovation, paving the way for future enterpreneurs. Leading by example and working towards the greater good.</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="team-section-grid" style="background-image: url(images/author-4.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>Shubhang Periwal</h3>
									<span>Chief Technology Officer</span>
									<p>Jack of all trades, master of some. A genius in mathematics who is fond of software development</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><!-- end fh5co-common-section -->
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

