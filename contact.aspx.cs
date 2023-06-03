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

public partial class contact : System.Web.UI.Page
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


        myCMD = new SqlCommand("INSERT INTO contact (Name, Email, MyMessage, MDate ) VALUES (@Name, @Email, @Message, current_timestamp );", conn);
        myCMD.Parameters.AddWithValue("@Name", tb_name.Text);
        myCMD.Parameters.AddWithValue("@Email", tb_email.Text);
        myCMD.Parameters.AddWithValue("@Message", tb_message.Text);
 
        try
        {
            conn.Open();
            myCMD.ExecuteNonQuery();
            conn.Close();
            lbl_error.Text = " Thank You " + tb_name.Text + " for reaching us <br /> We will reach you soon.";
        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
    }
}