<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Maa Ambay Transport Login Page</title>
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
  <style>

    .login input[type="email"]{
	border: none;
	border-radius: 3px;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
	font-size: 16px;
	padding: 10px;
	margin-bottom: 20px;
}
  </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
       <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
  <section class="login-container">
    
	<div class="login">
		<h1>Maa Ambay Transport</h1>
		<form id="login_form" runat="server">
			<label for="email">Email : </label>
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
			<label for="password">Password</label>
            <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
            <asp:Button ID="btn_submit" runat="server" Text="Login" OnClick="btn_submit_Click" /><br/>
            <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
		</form>
	</div>
  <p>Not an account. Create New Account <a href="register.aspx">Register for free</a></p><br/>
        <p>If you are admin. Click here for login <a href="admin_login.aspx"> Admin Login</a></p>
 </section>

   <!-- Footer -->
   <footer>
	<UC:Footer ID="footer" runat="server" />
  </footer>
</body>
</html>

