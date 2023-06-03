<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_profile.aspx.cs" Inherits="admin_admin_profile" %>
<%@ Register Src="~/AdminNavBar.ascx" TagName="AdminNavBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="profile.css"/>
    <link rel="stylesheet" href="css/adminCSS/admin_home.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <title>Dashboard - Admin</title>
</head>
<body>
     <!-- Navigation Bar -->
    <section>
     <UC:AdminNavBar ID="navbar"  runat="server" />
    </section>
    <section id="dashboad-section">
         <h1>Admin Profile</h1>
      
    </section>
        <section id="dashboad-option-section">
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
		
	</section>
    </section>

  
    <footer>
         <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
