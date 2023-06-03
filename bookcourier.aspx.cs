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

public partial class bookcourier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            cal_PickupDate.Visible = false;
        }
    }
    //public static String GetTimestamp(DateTime value)
    //{
    //    return value.ToString("dd-MM-yyyy");
    //}
    
    protected void btn_Submit_Click(object sender, EventArgs e)
    {


        if (Session["email"] != null)
        {
            SqlConnection conn;
            SqlCommand myCMD;
            String myConnectionString;
            DateTimeOffset now = (DateTimeOffset)DateTime.UtcNow;  // using System;
            DateTime PickupDate;
            PickupDate = cal_PickupDate.SelectedDate.Date;


            myConnectionString = ConfigurationManager.ConnectionStrings["MaaAmbayTransportConnectionString"].ToString();
            conn = new SqlConnection(myConnectionString);

            myCMD = new SqlCommand("INSERT INTO bookcourier (CourierTrackingID, FromAddress, ToAddress, CourierWeight, Dimension, Category, PickupDate, OrderDate, Email ) VALUES (@CourierTrackingID, @FromAddress, @ToAddress, @CourierWeight, @Dimension, @Category, @PickupDate, Current_TimeStamp, @Email )", conn);
            myCMD.Parameters.AddWithValue("@CourierTrackingID", "CC" + now.ToString("yyyyMMddHHmmssfff"));
            myCMD.Parameters.AddWithValue("@FromAddress", tb_FromAddress.Text);
            myCMD.Parameters.AddWithValue("@ToAddress", tb_ToAddress.Text);
            myCMD.Parameters.AddWithValue("@CourierWeight", Convert.ToInt16(tb_Weight.Text));
            myCMD.Parameters.AddWithValue("@Dimension", tb_Dimension.Text);
            myCMD.Parameters.AddWithValue("@Category", CategoryList.SelectedItem.Text);
            myCMD.Parameters.AddWithValue("@PickupDate", PickupDate);
           
            myCMD.Parameters.AddWithValue("@Email", Session["email"].ToString());

            try
            {
                conn.Open();
                myCMD.ExecuteNonQuery();
                conn.Close();
                lbl_error.Text = " Thank You for courier booking with us : Your Tracking Id : CC" +now.ToString("yyyyMMddHHmmssfff");
            }
            catch (Exception ex)
            {
                lbl_error.Text = ex.Message;
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }

       
    }

    protected void ImgBtn_Click(object sender, ImageClickEventArgs e)
    {
        if (cal_PickupDate.Visible)
        {
            cal_PickupDate.Visible = false;
        }
        else {
            cal_PickupDate.Visible = true;
        }
    }
    protected void cal_PickupDate_SelectionChanged(object sender, EventArgs e)
    {
        tb_pickupDate.Text = cal_PickupDate.SelectedDate.ToShortDateString();
        cal_PickupDate.Visible = false;
    }
}

  
