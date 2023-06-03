using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            lbl_Name.Text = "Name : "+Session["name"].ToString();
            lbl_Email.Text = "Email : " + Session["email"].ToString();
            lbl_Phone.Text = "Phone : " + Session["phone"].ToString();
            lbl_Address.Text = "Address : " + Session["address"].ToString();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}