<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booktruck.aspx.cs" Inherits="booktruck" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Book Truck - Maa Ambay Transport</title>
	
  <link rel="stylesheet" type="text/css" href="style.css"/>
	<link rel="stylesheet" href="css/bookcourier.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

  </head>
  <body>
      <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
  <section> 
		<div class="shipping">        
            <h1>Truck Booking</h1>
   
            <form id="truck_booking_form" runat="server">
			<div class="container "/>
				<div class="row ">
					 <div class="col-lg-6 col-md-6">
					    <label for="Origin">Origin :</label>
                        <asp:TextBox ID="tb_Origin" runat="server"></asp:TextBox>
						<label for="Distance">Distance (in km):</label>
                         <asp:TextBox ID="tb_Distance" runat="server"></asp:TextBox>
                         <label for="trucktype">Truck Type:</label>
                         <asp:DropDownList ID="trucktypeList" runat="server">
                              <asp:ListItem>Mini Truck</asp:ListItem>
                              <asp:ListItem>Pickup Truck</asp:ListItem>
                              <asp:ListItem>Trailer</asp:ListItem>
                          </asp:DropDownList>
                        
					  </div>
			
					  <div class="col-lg-6 col-md-6">
						    <label for="Destination">Destination : </label>
                            <asp:TextBox ID="tb_Destination" runat="server"></asp:TextBox>
					        <label for="No of Days">No of Days : </label>
                            <asp:TextBox ID="tb_NoOfDays" runat="server"></asp:TextBox>
                            <label for="delivery date"> Delivery Date : </label>
                           <asp:TextBox ID="tb_DeliveryDate" runat="server"></asp:TextBox>&nbsp;
                           <asp:ImageButton ID="ImgBtn" runat="server" ImageUrl="~/img/cal.png" OnClick="ImgBtn_Click" Width="40px" />
                            <asp:Calendar ID="cal_DeliveryDate" runat="server" OnSelectionChanged="cal_DeliveryDate_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
					  </div>
			   </div>
              <br/>
              <asp:Button ID="btn_book" runat="server" Text="Book For Enquiry" OnClick="btn_book_Click"  /><br/>
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
             </form>
	       </div>
	</section>
	<!-- Footer -->
  <footer>
        <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
