using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NavigationBar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["name"] != null)
        {
            lbl_nav.Text = "<li class='nav-item'><a class='nav-link' href= 'profile.aspx'>" + "Welcome <strong>" + Session["name"].ToString() + "</strong> </a></li>";
            lbl_nav2.Text = "<li class='nav-item'><a class='nav-link' href='logout.aspx'>LogOut</a></li> ";
        }
        else {
            lbl_nav.Text = "<li class='nav-item'><a class='nav-link' href='login.aspx'>Log In</a></li>";
            lbl_nav2.Text = "<li class='nav-item'><a class='nav-link' href='register.aspx'>Sign Up</a></li>";
        }
          if (Session["role"] != null)
        {
           
          lbl_nav3.Text= "<li class='nav-item'><a class='nav-link' href='admin_home.aspx'>Admin Portal</a></li> ";
        }
    }
 }