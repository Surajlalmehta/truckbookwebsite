<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Src="~/NavigationBar.ascx" TagName="NavigationBar" TagPrefix="UC"  %>
<%@ Register Src="~/footer.ascx" TagName="Footer" TagPrefix="UC"  %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Maa Ambay Transport - Home</title>
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="css/index.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </head>
  <body>
    <!-- Navigation Bar -->
    <section>
     <UC:NavigationBar ID="navbar"  runat="server" />
    </section>
    <!-- Hero Section -->
    <section class="hero" style="background-image: url('img/hero-bg.jpg');" >
      <div class="hero-content">
        <h1>Welcome to Maa Ambay Transport</h1>
        <p>Fast and reliable logistics and transport services at your doorstep</p>
        <a href="login.aspx" class="cta-btn">Get Started</a>
      </div>
    </section>

    <!-- Featured Services -->
    <section class="featured-services">
      <h2 class="services-header">Our Services</h2>
      <div class="container-fluid">
        <div class="row">
          <div class="service-card col-lg-4 col-md-6">
          
            <img src="img/truck.jpg" alt="Truck Booking"/>
            <h3>Truck Booking</h3>
            <p>Book trucks for your goods transportation needs with us</p>
            <a href="booktruck.aspx">Book Now</a>
          
          </div>
          <div class="service-card  col-lg-4 col-md-6">
            <img src="img/courier-shipping.png" alt="Courier Shipping"/>
            <h3>Courier Shipping</h3>
            <p>Send your parcels and packages securely and on time with us</p>
            <a href="bookcourier.aspx">Ship Now</a>
          </div>
          <div class="service-card col-lg-4 col-md-6">
            <img src="img\CustomerSupport.jpg" alt="Customer Support"/>
            <h3>Customer Support</h3>
            <p>We are committed to providing the best customer support to
               our clients. Our experienced and friendly staff is always ready
                to help you with any questions or concerns.</p>
            <a href="contact.aspx">Need Help</a>
          </div>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section class="about-section">
      <div class="about-content">
      <h2>About Us</h2>
      <img src="img\logo.gif" width="100%" alt=""/>  <br/> <br/>
      
        <p>Maa Ambay Transport is a logistics and transport company that offers fast and reliable services for all your transportation and delivery needs. We have a wide range of trucks and vehicles that can accommodate any size and weight of goods, and our trained professionals ensure that your shipments are delivered on time and in perfect condition. We also offer courier shipping services for your smaller packages and parcels, making it easy and hassle-free to send your items anywhere in the country. Contact us today to know more about our services and how we can help you.</p>
        <a href="about.aspx" class="btn btn-dark">Learn More</a>
      
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <UC:Footer ID="footer" runat="server" />
    </footer>

  </body>
</html>
