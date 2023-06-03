<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Maa Ambay Transport Contact Page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<link rel="stylesheet" type="text/css" href="css/contact.css"/>
	

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
          <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
		<section class="contact">
  

			<h1>Contact Us</h1>
			<form  id="contactform" runat="server">
				<label for="name">Name</label>
                <asp:TextBox ID="tb_name" runat="server"></asp:TextBox>
				<label for="email">Email</label>
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
				<label for="message">Message</label>
                <asp:TextBox ID="tb_message" runat="server"  TextMode="MultiLine" Rows="10"></asp:TextBox>
	
                <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-dark" Text="Submit" OnClick="btn_submit_Click" /><br/>
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>			</form>

			<div class="contact-info">
				<h2>Contact Information</h2>
				<p><strong>Address:</strong> Ranchi, Jharkand</p>
				<p><strong>Phone:</strong> 9934434328</p>
				<p><strong>Email:</strong> info@maaambaytransport.com</p>
			</div>
		</section>


	 <!-- Footer -->
	 <footer>
        <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>

