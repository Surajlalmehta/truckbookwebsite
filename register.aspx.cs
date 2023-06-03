using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        SqlConnection conn;
        SqlCommand myCMD;
     

       
        String myConnectionString;

        myConnectionString = ConfigurationManager.ConnectionStrings["MaaAmbayTransportConnectionString"].ToString();
        conn = new SqlConnection(myConnectionString);


        myCMD = new SqlCommand("INSERT INTO users (Name, Email, Phone, MyAddress, MyPassword, dt) VALUES (@name, @email, @phone, @address, @password, CURRENT_TIMESTAMP)", conn);
        myCMD.Parameters.AddWithValue("@name", tb_name.Text);
        myCMD.Parameters.AddWithValue("@email", tb_email.Text);
        myCMD.Parameters.AddWithValue("@phone", tb_phone.Text);
        myCMD.Parameters.AddWithValue("@address", tb_address.Text);
        myCMD.Parameters.AddWithValue("@password", tb_password.Text);

   

        try
        {
            conn.Open();
            myCMD.ExecuteNonQuery();
            conn.Close();
            lbl_error.Text = " Thank You " + tb_name.Text + " for Registration <br /> New User is registered successfully with email id : " + tb_email.Text + " <br /> Thank You for Registration ";
            Session["email"] = tb_email.Text;
            Session["name"] = tb_name.Text;
            Session["phone"] = tb_phone.Text;
            Session["address"] = tb_address.Text;
            Response.Redirect("index.aspx");
        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
    }
}

  
