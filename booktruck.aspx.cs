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

public partial class booktruck : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cal_DeliveryDate.Visible = false;
        }
    }
   
    //public static String GetTimestamp(DateTime value)
    //{
    //    return value.ToString("dd-MM-yyyy");
    //}

    protected void btn_book_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            SqlConnection conn;
            SqlCommand myCMD;
            String myConnectionString;

            DateTimeOffset now = (DateTimeOffset)DateTime.UtcNow;  // using System;
            DateTime DeliveryDate;
            DeliveryDate = cal_DeliveryDate.SelectedDate.Date;


            myConnectionString = ConfigurationManager.ConnectionStrings["MaaAmbayTransportConnectionString"].ToString();
            conn = new SqlConnection(myConnectionString);

            myCMD = new SqlCommand("INSERT INTO truckbooking (TruckTrackingID, Origin, Destination, Distance, NoOfDays, TruckType, DeliveryDate, OrderDate, Email ) VALUES ( @TruckTrackingID, @origin, @destination, @distance, @NoOfDays, @trucktype, @deliveryDate, current_timestamp, @Email  )", conn);

            myCMD.Parameters.AddWithValue("@TruckTrackingID", "TT" + now.ToString("yyyyMMddHHmmssfff"));
            myCMD.Parameters.AddWithValue("@Origin", tb_Origin.Text);
            myCMD.Parameters.AddWithValue("@Destination", tb_Destination.Text);
            myCMD.Parameters.AddWithValue("@Distance", Convert.ToInt64(tb_Distance.Text));
            myCMD.Parameters.AddWithValue("@NoOfDays", Convert.ToInt16(tb_NoOfDays.Text));
            myCMD.Parameters.AddWithValue("@TruckType", trucktypeList.SelectedItem.Text);
            myCMD.Parameters.AddWithValue("@DeliveryDate", cal_DeliveryDate.SelectedDate.ToShortDateString());
            myCMD.Parameters.AddWithValue("@Email", Session["email"].ToString());
            //GetTimestamp(DeliveryDate)
            try
            {
                conn.Open();
                myCMD.ExecuteNonQuery();
                conn.Close();
                lbl_error.Text = " Thank You for Enquiry: Your Tracking Id : TT" + now.ToString("yyyyMMddHHmmssfff");
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
        if (cal_DeliveryDate.Visible)
        {
            cal_DeliveryDate.Visible = false;
        }
        else
        {
            cal_DeliveryDate.Visible = true;
        }
    }
    protected void cal_DeliveryDate_SelectionChanged(object sender, EventArgs e)
    {
        tb_DeliveryDate.Text = cal_DeliveryDate.SelectedDate.ToShortDateString();
        cal_DeliveryDate.Visible = false;
    }
}