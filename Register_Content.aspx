<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register_Content.aspx.cs" Inherits="_Default" %>

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
    <div class="heading-section text-center" style="width:600px; margin:0 auto;">  
            <table class="auto-style1" style="border-right:100px;border-left:100px">  
                <tr>  
                    <td style="width: 500px;text-align:left">First Name :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Text="*" ForeColor="Red" runat="server" ErrorMessage="First Name field cannot be empty"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">Last Name :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" ControlToValidate="TextBox5" Text="*" ForeColor="Red" runat="server" ErrorMessage="Last Name field cannot be empty"></asp:RequiredFieldValidator>  
                    </td>  
  
               </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">Blood Group :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem  Value="A"> A </asp:ListItem>
                            <asp:ListItem Value="B"> B </asp:ListItem>
                            <asp:ListItem Value="AB"> AB </asp:ListItem>
                            <asp:ListItem Value="O"> O </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator11" ControlToValidate="DropDownList1" Text="*" ForeColor="Red" runat="server" ErrorMessage="Blood Group field cannot be empty"></asp:RequiredFieldValidator>  
                    </td>  
  
               </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Weight:</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox11" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator12" ControlToValidate="TextBox11" Text="*" ForeColor="Red" runat="server" ErrorMessage="Blood Group field cannot be empty"></asp:RequiredFieldValidator>  
                        <asp:CustomValidator ID="CustomValidator3" Text="*" ForeColor="Red" runat="server" ErrorMessage="Please enter a numeric value" ControlToValidate="TextBox11" OnServerValidate="CustomValidator3_ServerValidate1"></asp:CustomValidator>
                    </td>  
  
               </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Password</td>  
                     <td style="width: 500px;text-align:left"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox> 
                     <asp:RequiredFieldValidator  ID="RequiredFieldValidator3" ControlToValidate="TextBox2" Text="*" ForeColor="Red" runat="server" ErrorMessage="Password field cannot be empty"></asp:RequiredFieldValidator>
                    </td> 
                </tr>  
                <tr>  
                    <td style="width: 500px;text-align:left">Confirm Password</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator7" ControlToValidate="TextBox3" Text="*" ForeColor="Red" runat="server" ErrorMessage="Password field cannot be empty"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" Text="*" ForeColor="Red" runat="server" ErrorMessage="There is password discrepancy" ControlToValidate="TextBox3" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td style="width: 500px;text-align:left">Gender</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Right">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                       <asp:RequiredFieldValidator  ID="RequiredFieldValidator10" ControlToValidate="RadioButtonList1" Text="*" ForeColor="Red" runat="server" ErrorMessage="Gender field cannot be empty"></asp:RequiredFieldValidator> 
                    </td>  
               </tr>
                 <tr>  
                    <td style="width: 500px;text-align:left">Date of Birth <p style="font-size:small;color:red">dd/mm/yyyy</p></td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator8" ControlToValidate="TextBox10" Text="*" ForeColor="Red" runat="server" ErrorMessage="DOB field cannot be empty"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" Text="*" ForeColor="Red" runat="server" ErrorMessage="You must be between 18 and 60 to donate blood" ControlToValidate="TextBox10" OnServerValidate="AgeVld_ServerValidate"></asp:CustomValidator>
                    </td>  
                </tr>
                
                <tr>  
                    <td style="width: 500px;text-align:left">Email Address</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator9" ControlToValidate="TextBox4" Text="*" ForeColor="Red" runat="server" ErrorMessage="Email field cannot be empty"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            runat="server" ErrorMessage="Please Enter Valid Email ID"
                            ControlToValidate="TextBox4"
                            Text="*"
                            ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </td>  
                </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Phone Number</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator4" ControlToValidate="TextBox9" Text="*" ForeColor="Red" runat="server" ErrorMessage="Phone Number field cannot be empty"></asp:RequiredFieldValidator>
                    </td>  
                </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Address</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                    </td>  
                </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">City</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator5" ControlToValidate="TextBox8" Text="*" ForeColor="Red" runat="server" ErrorMessage="City field cannot be empty"></asp:RequiredFieldValidator>
                    </td>  
                </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">State</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator6" ControlToValidate="TextBox6" Text="*" ForeColor="Red" runat="server" ErrorMessage="State field cannot be empty"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>                   
            </table> 
        <br /> 
        <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click"  /> 
        <br />
        <br />
        <asp:ValidationSummary 
            ID="ValidationSummary1"
            runat="server" 
            ShowMessageBox="false" 
            DisplayMode="BulletList" 
            ShowSummary="true"
            BackColor="Snow"
            Width="450"
            ForeColor="Red"
            Font-Size="Large"
            Font-Italic="true"
            />
     
        <asp:Label ID="Label1" runat="server" Text="This will not show" Visible="false" ></asp:Label>  
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

