<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Content.aspx.cs" Inherits="_Default" %>

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
    <div id="fh5co-common-section">
		<div class="container">
			<div class="heading-section text-center">
				<h2>Welcome Back</h2>
                <asp:Label ID="Label17" runat="server" Text="Label" Font-Bold="true" Font-Size="Larger" ForeColor="IndianRed"></asp:Label>

			</div>
			<div class="row about">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-6 col-sm-6 services-num services-num-text-right">
						<img src="images/pic4.png"  class="img-responsive"/>
					</div>
					<div class="col-md-6 col-sm-6 services-num">
						<div class="desc">
                            <h3>Hello There,</h3>
							<p>We have missed you. Feel free to access your past donations or request for blood supplies. We provide a range of services suited to your needs.</p>
						</div>
					</div>
				</div>
			</div>
        </div>
	</div>

    <div style="width:600px; margin:0 auto;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Text="--Select One--" Value="" />
            <asp:ListItem>View Personal Details</asp:ListItem>
            <asp:ListItem>View Last Donation</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

    </div>
    <div class="heading-section text-center" style="width:600px; margin:0 auto;" id="divnew1" runat="server" visible="false">  
            <table class="auto-style1" style="border-right:100px;border-left:100px">  
                <tr>  
                    <td style="width: 500px;text-align:left">First Name :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>  
  
               </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">Last Name :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>  
  
               </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">Blood Group :</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>  
  
               </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Weight:</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>  
  
               </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Password</td>  
                     <td style="width: 500px;text-align:left">
                         <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                     </td> 
                </tr>  
                  
                <tr>  
                    <td style="width: 500px;text-align:left">Gender</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>  
               </tr>
                 <tr>  
                    <td style="width: 500px;text-align:left">Date of Birth</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>  
                </tr>
                
                <tr>  
                    <td style="width: 500px;text-align:left">Email Address</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>  
                </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Phone Number</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </td>  
                </tr>
                <tr>  
                    <td style="width: 500px;text-align:left">Address</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </td>  
                </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">City</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label> 
                    </td>  
                </tr> 
                <tr>  
                    <td style="width: 500px;text-align:left">State</td>  
                    <td style="width: 500px;text-align:left">  
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>

                    </td>  
                </tr>                   
            </table> 
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="This will not show" Visible="false" ></asp:Label>  
    </div>


    <div class="heading-section text-center" style="width:600px; margin:0 auto;" id="div1" runat="server" visible="false">  
      <div>
            <div class="col-sm-2">
            </div>
            <div class="col-sm-3">
                <asp:Label ID="Label15" runat="server" Text="Choose City"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Manipal</asp:ListItem>
                    <asp:ListItem>Mangalore</asp:ListItem>
                    <asp:ListItem>Bangalore</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-2">        
            </div>
            <div class="col-sm-3">
                <asp:Label ID="Label16" runat="server" Text="Choose Blood Type"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>O</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <br />
        <div>
            <br />
            <br />
            <asp:Button runat="server" Text="Find" OnClick="Unnamed_Click"></asp:Button>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lolita %>" SelectCommand="SELECT * FROM [Donations] WHERE (([city] = @city) AND ([bg] = @bg))">
                <SelectParameters>
                    <asp:SessionParameter Name="city" SessionField="city" Type="String" />
                    <asp:SessionParameter Name="bg" SessionField="bg" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" 
            DataKeyNames="Id" AllowSorting="True"
            AllowPaging="True" PageSize="3" Visible="false"
            >
            <RowStyle BackColor="#ff9966" />
            <AlternatingRowStyle BackColor="White" />
            <HeaderStyle BackColor="Black" ForeColor="White" />
            <SelectedRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true" InsertVisible="False" SortExpression="Id"/>
                <asp:BoundField DataField="f_name" HeaderText="First Name" SortExpression="f_name" />
                <asp:BoundField DataField="l_name" HeaderText="Last Name" SortExpression="l_name"/>
                <asp:BoundField DataField="time_stamp" HeaderText="Donation Date" SortExpression="time_stamp" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"/>
                <asp:BoundField DataField="bg" HeaderText="Blood Group" SortExpression="bg" />
                
            </Columns>
        </asp:GridView>

        </div>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Output" Visible="false"></asp:Label>
        <br />
    </div>
    <br />
    <br /><br />


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

