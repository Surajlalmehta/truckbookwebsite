using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["role"]!= null)
        {
            lbl_Name.Text = "Name : " + Session["name"].ToString();
            lbl_Email.Text = "Email : " + Session["email"].ToString();
            lbl_Phone.Text = "Phone : " + Session["phone"].ToString();
            lbl_Address.Text = "Address : " + Session["address"].ToString() + "<br/> Role : "+Session["role"].ToString();
        }
        else
        {
            Response.Redirect("admin_login.aspx");
        }
    }
}