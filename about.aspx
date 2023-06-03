<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Maa Ambay Transport About Page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<link rel="stylesheet" type="text/css" href="css/about.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
     <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>

	<section class="about" style="background-image: url('img/hero-bg.jpg');" >
		<h1>About Us</h1>
		<p>Maa Ambay Transport is a leading logistics and transport company with over 20 years of experience in the industry. We provide a range of truck vehicle booking and courier delivery services to businesses and individuals throughout the country.</p>
		<p>Our mission is to provide reliable, affordable, and efficient transportation solutions to our clients. We pride ourselves on our commitment to customer satisfaction and our team of experienced and dedicated professionals.</p>
		<p>At Maa Ambay Transport, we believe in using the latest technology and equipment to ensure the safety and security of our clients' shipments. We also prioritize sustainability and environmental responsibility in all our operations.</p>
	</section>

 <!-- Footer -->
 <footer>
    <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
