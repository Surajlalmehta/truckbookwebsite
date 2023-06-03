<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Maa Ambay Transport User Profile Page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<link rel="stylesheet" type="text/css" href="css/profile.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
       <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
  <section class="profile">
			<h1>User Profile</h1>
			<div class="profile-info">
				<img src="img\logo.jpg" alt="User Avatar"/>
				<div class="user-details">
                    <asp:Label ID="lbl_Name" runat="server" Text=""></asp:Label><br/><br/>
                    <asp:Label ID="lbl_Email" runat="server" Text=""></asp:Label><br/><br/>
                    <asp:Label ID="lbl_Phone" runat="server" Text=""></asp:Label><br/><br/>
                    <asp:Label ID="lbl_Address" runat="server" Text=""></asp:Label>
 		
				</div>
			</div>
			<%--<div class="orders">
				<h2>My Orders</h2>
				<table id="order-details">
					<tr>
						<th>Order ID</th>
						<th>Date</th>
						<th>Status</th>
						<th>Tracking Number</th>
					</tr>
					<tr>
						<td>12345</td>
						<td>2023-04-01</td>
						<td>Delivered</td>
						<td>ABC123</td>
					</tr>
					<tr>
						<td>54321</td>
						<td>2023-03-28</td>
						<td>In Transit</td>
						<td>XYZ789</td>
					</tr>
				</table>
			</div>--%>
	</section>


	 <!-- Footer -->
	 <footer>
		  <UC:Footer ID="footer" runat="server" />
	  </footer>
</body>
</html>
