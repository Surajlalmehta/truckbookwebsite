<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookcourier.aspx.cs" Inherits="bookcourier" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Book Courier Shipping - Maa Ambay Transport</title>
	
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
			<h1>Book Courier Shipping</h1>
			<form id="BookCourierForm" runat="server">
      Courier Tracking ID :
				<div class="container ">
					<div class="row ">
					  <div class="col-lg-6 col-md-6">
						  <label for="FromAddress">From :</label>
                          <asp:TextBox ID="tb_FromAddress" runat="server"></asp:TextBox>
						  <label for="Weight">Weight (in gram ):</label>
                          <asp:TextBox ID="tb_Weight" runat="server"></asp:TextBox>
                          <label for="Category">Category :</label>
                          <asp:DropDownList ID="CategoryList" runat="server">
                              <asp:ListItem>Hardware</asp:ListItem>
                              <asp:ListItem>Grocery</asp:ListItem>
                              <asp:ListItem>Furniture</asp:ListItem>
                          </asp:DropDownList>
					  </div>
					  <div class="col-lg-6 col-md-6">
						  <label for="ToAddress">To : </label>
                          <asp:TextBox ID="tb_ToAddress" runat="server"></asp:TextBox>
					      <label for="dimension">Dimension(in cm) : </label>
                          <asp:TextBox ID="tb_Dimension" runat="server"></asp:TextBox>

                          <label for="PickupDate">Pickup Date : </label>
                           <asp:TextBox ID="tb_pickupDate" runat="server"></asp:TextBox>&nbsp;
                          <asp:ImageButton ID="ImgBtn" runat="server" ImageUrl="~/img/cal.png" OnClick="ImgBtn_Click" Width="40px" />
                          <asp:Calendar ID="cal_PickupDate" runat="server" OnSelectionChanged="cal_PickupDate_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                              <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                              <DayStyle BackColor="#CCCCCC" />
                              <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                              <OtherMonthDayStyle ForeColor="#999999" />
                              <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                              <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                              <TodayDayStyle BackColor="#999999" ForeColor="White" />
                          </asp:Calendar>

					  </div>
					</div>
				  </div>
          <br/>
                <asp:Button ID="btn_Submit" runat="server" Text="Book Courier" OnClick="btn_Submit_Click" /><br /><br />
                <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label><br/>
                <asp:Label ID="lbl_result" runat="server" Text=""></asp:Label><br/>
        <p id="price"></p>
			</form>
		</div>
	</section>
	<!-- Footer -->
  <footer>
      <UC:Footer ID="footer" runat="server" />
    </footer>
</body>
</html>
