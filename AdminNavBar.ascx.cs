using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminNavBar : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            lbl_nav.Text = "<li class='nav-item'><a class='nav-link' href= 'admin_profile.aspx'>" + "Welcome <strong>" + Session["name"].ToString() + "</strong> </a></li>";
            lbl_nav2.Text = "<li class='nav-item'><a class='nav-link' href='logout.aspx'>LogOut</a></li> ";
            lbl_nav3.Text = "<li class='nav-item'><a class='nav-link' href='index.aspx'>User Portal</a></li> ";
        }
        else
        {
            lbl_nav.Text = "<li class='nav-item'><a class='nav-link' href='admin_login.aspx'>Log In</a></li>";
            
        }
    }
}