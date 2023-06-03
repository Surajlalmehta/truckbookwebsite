<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8"/>
	<title>Services - Maa Ambay Transport</title>
	<link rel="stylesheet" href="style.css"/>
	<link rel="stylesheet" href="css/service.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
<!-- Navigation Bar -->
<section>
 <UC:NavigationBar ID="navbar"  runat="server" />
  
</section>
	<section class="services">
			<h1>Our Services</h1>
			<p>We offer a wide range of logistics and transport services to meet your needs. Our services include:</p>
			<div><ul>
				<li>Truck booking for all types of cargo</li>
				<li>Express delivery</li>
				<li>Door-to-door delivery</li>
				<li>Freight forwarding</li>
				<li>Customs clearance</li>
				<li>Courier shipping</li>
				<li>Transportation of perishable goods</li>
				<li>Transportation of oversized cargo</li>
				<li>Realtime Tracking of Booking Status</li>
			</ul></div>
			<p>Contact us today to learn more about our services and how we can help you with your logistics needs.</p>
	</section>


	<!-- Footer -->
    <footer>
         <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
