using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class user_buses_bus_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            from.Text = HttpUtility.UrlDecode(Request.QueryString["From"]);
            to.Text = HttpUtility.UrlDecode(Request.QueryString["To"]);
            tno.Text = HttpUtility.UrlDecode(Request.QueryString["ServiceNo"]);
            arri.Text = HttpUtility.UrlDecode(Request.QueryString["Arrival"]);
            type.Text = HttpUtility.UrlDecode(Request.QueryString["Type"]);
            dept.Text = HttpUtility.UrlDecode(Request.QueryString["Departure"]);

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Your Ticket Booked Successfully");
        
    }
}