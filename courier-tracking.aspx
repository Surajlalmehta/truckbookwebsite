<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courier-tracking.aspx.cs" Inherits="courier_tracking" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">	
    <meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Courier Booking Status | Maa Ambay Transport</title>

	<link rel="stylesheet" href="css/courier-tracking.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	
</head>
  <body>
       <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
  <section>
		<div class="tracking">
			<h1>Courier Booking Status</h1>
            <div style="text-align:center">
			<form id = "track_CourierBooking" class="mb-3" runat="server">
                <%----%>
				<label for="TrackingID" class="form-label">Enter Tracking Number:</label><br/>
                <asp:TextBox ID="tb_TrackingID" runat="server" CssClass="form-control" ></asp:TextBox> <br/><br/>
                <asp:Button ID="btn_track" runat="server" CssClass="btn btn-dark" Text="Track"   OnClick="btn_track_Click" />&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btn_clear" runat="server" CssClass="btn btn-dark" Text="Clear" OnClick="btn_clear_Click1" /><br/>
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label><br/><br/><br/>
              </form>
			   </div>
       
             
			    <div id="tracking_div" class="tracking-results">
			    <h3>Tracking Result : </h3><br/>
                <asp:Label ID="lbl_CourierTrackingID" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Origin" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Destination" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Weight" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Dimension" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Category" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_PickupDate" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_OrderDate" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_Email" runat="server" Text=""></asp:Label><br/><br/>

             
			    </div>
        
		</div>
	</section>

 <!-- Footer -->
 <footer>
       <UC:Footer ID="footer" runat="server" />
    </footer>

</body>
</html>
