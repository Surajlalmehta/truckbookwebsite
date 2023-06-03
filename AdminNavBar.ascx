<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminNavBar.ascx.cs" Inherits="AdminNavBar" %>

 <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="admin_home.aspx">
          <img src="img/logo.gif" alt="Logo" width="100"  class="d-inline-block align-text-top"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
         <li class="nav-item"><a class="nav-link " href="admin_home.aspx">Home</a></li>
         <li class="nav-item"><a class="nav-link " href="admin_truck.aspx">Truck Booking</a></li>
        <li class="nav-item"><a class="nav-link"  href="admin_courier.aspx">Courier Shipping</a></li>
         <li class="nav-item"><a class="nav-link"  href="admin_messages.aspx">Messages</a></li>
                   <li class="nav-item"><a class="nav-link"  href="admin_user.aspx">Users Record</a></li>
         
        <%--<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Tracking
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="courier-tracking.aspx">Courier Tracking</a></li>
            <li><hr class="dropdown-divider"/></li>
            <li><a class="dropdown-item"  href="truck-tracking.aspx">Truck Tracking</a></li>
          </ul>
        </li>--%>
              <asp:Label ID="lbl_nav" runat="server" Text=""></asp:Label>
              <asp:Label ID="lbl_nav2" runat="server" Text=""></asp:Label>
              <asp:Label ID="lbl_nav3" runat="server" Text=""></asp:Label></ul>
  
        </div>
      </div>
    </nav>