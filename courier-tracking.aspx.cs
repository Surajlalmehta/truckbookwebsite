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


public partial class courier_tracking : System.Web.UI.Page
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_CourierTrackingID.Visible = false;
        lbl_Origin.Visible = false;
        lbl_Destination.Visible = false;
        lbl_Weight.Visible = false;
        lbl_Dimension.Visible = false;
        lbl_Category.Visible = false;
        lbl_PickupDate.Visible = false;
        lbl_OrderDate.Visible = false;
        lbl_Email.Visible = false;
    }
    protected void btn_track_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand myCMD;
        SqlDataAdapter myDA;

        DataSet myDS = new DataSet();
        String myConnectionString;

        myConnectionString = ConfigurationManager.ConnectionStrings["MaaAmbayTransportConnectionString"].ToString();
        conn = new SqlConnection(myConnectionString);
        myCMD = new SqlCommand("Select * from bookCourier Where CourierTrackingID = @CourierTrackingID;", conn);
        myCMD.Parameters.AddWithValue("@CourierTrackingID", tb_TrackingID.Text);
        myDA = new SqlDataAdapter(myCMD);

        try
        {
            conn.Open();
            myDA.Fill(myDS, "userData");
            myCMD.ExecuteNonQuery();
            conn.Close();
            lbl_error.Text = "";
            lbl_CourierTrackingID.Text = "CourierTrackingID : " +myDS.Tables["userData"].Rows[i]["CourierTrackingID"].ToString();
            lbl_Origin.Text = "Origin : " + myDS.Tables["userData"].Rows[i]["FromAddress"].ToString();
            lbl_Destination.Text = "Destination : " + myDS.Tables["userData"].Rows[i]["ToAddress"].ToString();
            lbl_Weight.Text = "Weight : " + myDS.Tables["userData"].Rows[i]["CourierWeight"].ToString();
            lbl_Dimension.Text = "Dimension : " + myDS.Tables["userData"].Rows[i]["Dimension"].ToString();
            lbl_Category.Text = "Category : " + myDS.Tables["userData"].Rows[i]["Category"].ToString();
            lbl_PickupDate.Text = "PickupDate : " + myDS.Tables["userData"].Rows[i]["PickupDate"].ToString();
            lbl_OrderDate.Text = "OrderDate : " + myDS.Tables["userData"].Rows[i]["OrderDate"].ToString();
            lbl_Email.Text = "Email : " + myDS.Tables["userData"].Rows[i]["Email"].ToString();
            lbl_CourierTrackingID.Visible = true;
            lbl_Origin.Visible = true;
            lbl_Destination.Visible = true;
            lbl_Weight.Visible = true;
            lbl_Dimension.Visible = true;
            lbl_Category.Visible = true;
            lbl_PickupDate.Visible = true;
            lbl_OrderDate.Visible = true;
            lbl_Email.Visible = true;

        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
    }

    protected void btn_clear_Click1(object sender, EventArgs e)
    {
        lbl_CourierTrackingID.Text = "";
        lbl_Origin.Text = "";
        lbl_Destination.Text = "";
        lbl_Weight.Text = "";
        lbl_Dimension.Text = "";
        lbl_Category.Text = "";
        lbl_PickupDate.Text = "";
        lbl_OrderDate.Text = "";
        lbl_Email.Text = "";
    }
}