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

public partial class login : System.Web.UI.Page
{   static int rowCount, i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btn_submit_Click (object sender, EventArgs e)
    {

        SqlConnection conn;
        SqlCommand myCMD;
        SqlDataAdapter myDA;
        DataSet myDS = new DataSet();

        String myConnectionString;

        myConnectionString = ConfigurationManager.ConnectionStrings["MaaAmbayTransportConnectionString"].ToString();
        conn = new SqlConnection(myConnectionString);


        myCMD = new SqlCommand("SELECT * FROM users WHERE Email = @Email AND MyPassword = @Password;", conn);
        myCMD.Parameters.AddWithValue("@Password", tb_password.Text);
        myCMD.Parameters.AddWithValue("@Email", tb_email.Text);
        myDA = new SqlDataAdapter(myCMD);

        try
        {
            conn.Open();
            myCMD.ExecuteNonQuery();
            myDA.Fill(myDS, "user");
            conn.Close();
            rowCount = myDS.Tables["user"].Rows.Count;

            if (rowCount > 0)
            {
                Session["email"] = myDS.Tables["user"].Rows[i]["Email"].ToString();
                Session["name"] = myDS.Tables["user"].Rows[i]["Name"].ToString();
                Session["phone"] = myDS.Tables["user"].Rows[i]["Phone"].ToString();
                Session["address"] = myDS.Tables["user"].Rows[i]["MyAddress"].ToString();
               
                lbl_error.Text = "Successfully Login. Welcome back, " + Session["name"];
                Response.Redirect("index.aspx");
            }
            else
            {
                lbl_error.Text = " FAILED LOGINED";
            }
        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
        
    }
        
}