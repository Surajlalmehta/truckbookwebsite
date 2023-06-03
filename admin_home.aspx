<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin" %>
<%@ Register Src="~/AdminNavBar.ascx" TagName="AdminNavBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="style.css"/>
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
         <h1>Admin Dashboard</h1>
        <p>Lets Explore Admin Dashboard :  #YourDashboard  #YourControl</p>
    </section>
        <section id="dashboad-option-section">
        <div class="container-fuild">
            <div class="row">
                <div class="col-lg-4" style="margin-bottom:50px;">
                    <div class="card" style="width: 18rem;">
                      <img src="img/courier-shipping.png" class="card-img-top" alt="..."/>
                       <div class="card-body">
                       <h5 class="card-title">Courier Shipping Record</h5>
                        <p class="card-text">View all courier shipping order Details </p>
                          <a href="admin_courier.aspx" class="btn btn-primary">View Detail </a>
                        </div>
                     </div>
                </div>
                <div class="col-lg-4" style="margin-bottom:50px;">
                    <div class="card" style="width: 18rem;">
                      <img src="img/truck.jpg" class="card-img-top" alt="..."/>
                       <div class="card-body">
                       <h5 class="card-title">Truck Enquiry Record</h5>
                        <p class="card-text">View all Truck Enquiry Order Details </p>
                          <a href="admin_truck.aspx" class="btn btn-primary">View Detail </a>
                        </div>
                     </div>
                </div>
                <div class="col-lg-4" style="margin-bottom:50px;">
                    <div class="card" style="width: 18rem;">
                      <img src="img/user_logo.jpg" class="card-img-top" alt="..."/>
                       <div class="card-body" >
                       <h5 class="card-title">User Record</h5>
                        <p class="card-text">View all user record </p>
                          <a href="admin_user.aspx" class="btn btn-primary">View Detail </a>
                        </div>
                     </div>
                </div>
                <div class="col-lg-4" style="margin-bottom:50px;">
                    <div class="card" style="width: 18rem;">
                      <img src="img/message.jpg" class="card-img-top" alt="..."/>
                       <div class="card-body">
                       <h5 class="card-title">All Message </h5>
                        <p class="card-text">View all message on Maa Ambay Transport </p>
                          <a href="admin_messages.aspx" class="btn btn-primary">View Detail </a>
                        </div>
                     </div>
                </div>
            </div>
        </div>
        
    </section>

  
    <footer>
         <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
