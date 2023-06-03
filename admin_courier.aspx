<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_courier.aspx.cs" Inherits="admin_admin_courier" %>
<%@ Register Src="~/AdminNavBar.ascx" TagName="AdminNavBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="css/adminCSS/admin_home.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <title>Courier Shipping - Admin</title>
</head>
<body>
     <!-- Navigation Bar -->
    <section>
     <UC:AdminNavBar ID="navbar"  runat="server" />
    </section>
    <section id="dashboad-section">
         <h1>Courier Shipping Record</h1>
        <p>All Courier Shipping Record </p>
    </section>
        <section id="users-section">
             <form id="form1" runat="server">
                 <asp:GridView ID="GridViewCourier" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="CourierDataSource" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:BoundField DataField="CourierTrackingID" HeaderText="CourierTrackingID" SortExpression="CourierTrackingID" />
                         <asp:BoundField DataField="FromAddress" HeaderText="From Address" SortExpression="FromAddress" />
                         <asp:BoundField DataField="ToAddress" HeaderText="To Address" SortExpression="ToAddress" />
                         <asp:BoundField DataField="CourierWeight" HeaderText="Courier Weight" SortExpression="CourierWeight" />
                         <asp:BoundField DataField="Dimension" HeaderText="Dimension" SortExpression="Dimension" />
                         <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                         <asp:BoundField DataField="PickupDate" HeaderText="Pickup Date" SortExpression="PickupDate" />
                         <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                         <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     </Columns>
                     <EditRowStyle BackColor="#2461BF" />
                     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EFF3FB" />
                     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#F5F7FB" />
                     <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                     <SortedDescendingCellStyle BackColor="#E9EBEF" />
                     <SortedDescendingHeaderStyle BackColor="#4870BE" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="CourierDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MaaAmbayTransportConnectionString %>" SelectCommand="SELECT * FROM [bookCourier]"></asp:SqlDataSource>
           </form>
    </section>
    <section>
   
    <div>
    
    </div>

    </section>
   
    <footer>
         <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
