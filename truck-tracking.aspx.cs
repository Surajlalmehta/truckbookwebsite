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


public partial class truck_tracking : System.Web.UI.Page
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

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
        myCMD = new SqlCommand("Select * from truckbooking Where TruckTrackingID = @TruckTrackingID;", conn);
        myCMD.Parameters.AddWithValue("@TruckTrackingID", tb_TrackingID.Text);
        myDA = new SqlDataAdapter(myCMD);

        try
        {
            conn.Open();
            myDA.Fill(myDS, "userData");
            myCMD.ExecuteNonQuery();
            conn.Close();
            lbl_error.Text = "";
            lbl_TruckTrackingID.Text = "TruckTrackingID : " + myDS.Tables["userData"].Rows[i]["TruckTrackingID"].ToString();
            lbl_Origin.Text = "Origin : " + myDS.Tables["userData"].Rows[i]["Origin"].ToString();
            lbl_Destination.Text = "Destination : " + myDS.Tables["userData"].Rows[i]["Destination"].ToString();
            lbl_Distance.Text = "Distance : " + myDS.Tables["userData"].Rows[i]["Distance"].ToString();
            lbl_NoOfDays.Text = "No of Days : " + myDS.Tables["userData"].Rows[i]["NoOfDays"].ToString();
            lbl_TruckType.Text = "TruckType : " + myDS.Tables["userData"].Rows[i]["TruckType"].ToString();
            lbl_DeliveryDate.Text = "DeliveryDate : " + myDS.Tables["userData"].Rows[i]["DeliveryDate"].ToString();
            lbl_OrderDate.Text = "OrderDate : " + myDS.Tables["userData"].Rows[i]["OrderDate"].ToString();
            lbl_Email.Text = "Email : " + myDS.Tables["userData"].Rows[i]["Email"].ToString();

        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.Message;
        }
    }

    protected void btn_clear_Click(object sender, EventArgs e)
    {
        lbl_TruckTrackingID.Text = "";
        lbl_Origin.Text = "";
        lbl_Destination.Text = "";
        lbl_Distance.Text = "";
        lbl_NoOfDays.Text = "";
        lbl_TruckType.Text = "";
        lbl_DeliveryDate.Text = "";
        lbl_OrderDate.Text = "";
        lbl_Email.Text = "";
    }
}