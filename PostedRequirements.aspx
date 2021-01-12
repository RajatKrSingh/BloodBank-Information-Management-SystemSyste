<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PostedRequirements.aspx.cs" Inherits="_Default" %>

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
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <div class="col-sm-3"> </div>
            <div class="col-sm-6">        
                <asp:Label ID="Label1" ForeColor="IndianRed" runat="server" Text="Your unique Transaction ID is "  Font-Size="X-Large" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-sm-3"> </div>
        </div>
    <br />
    <br />
        <div>
            <div class="col-sm-3"> </div>
            <div class="col-sm-6">        
                <asp:Label ID="Label2" ForeColor="IndianRed" runat="server" Text="Use the Transaction ID to check progress. You will be contacted shortly." Font-Size="X-Large" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-sm-3"> </div>
        </div>

    <br />
    <br />

    <div id="fh5co-contact-section">
        <br />
        <br />
		<div class="container">
			<div class="row">
				<div class="col-md-4 animate-box">
                    <br />
                    <br />
					<ul class="contact-info">
						<li>Request blood from donors</li>
						<li>Contact our donors with a heartfelt,customized message.</li>
					</ul>
				</div>
				<div class="col-md-8 animate-box">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">

							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" Width="600px" Height="200px" ></asp:TextBox>

							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" BackColor="#F03861" ForeColor="White" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <br />
    <br />

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

