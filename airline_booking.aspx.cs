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

public partial class user_Airlines_ticket_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            from.Text = HttpUtility.UrlDecode(Request.QueryString["From"]);
            to.Text = HttpUtility.UrlDecode(Request.QueryString["To"]);
            tno.Text = HttpUtility.UrlDecode(Request.QueryString["FlightNo"]);
            arri.Text = HttpUtility.UrlDecode(Request.QueryString["Arri"]);
            type.Text = HttpUtility.UrlDecode(Request.QueryString["Type"]);
            dept.Text = HttpUtility.UrlDecode(Request.QueryString["Dept"]);
            airlines.Text = HttpUtility.UrlDecode(Request.QueryString["Airlines"]);
            via.Text = HttpUtility.UrlDecode(Request.QueryString["Via"]);

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}