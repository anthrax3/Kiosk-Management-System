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

public partial class user_railways_tickets_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            from.Text = HttpUtility.UrlDecode(Request.QueryString["From"]);
            to.Text = HttpUtility.UrlDecode(Request.QueryString["To"]);
            tno.Text = HttpUtility.UrlDecode(Request.QueryString["TrainNo"]);
            arri.Text = HttpUtility.UrlDecode(Request.QueryString["Arri"]);
            type.Text = HttpUtility.UrlDecode(Request.QueryString["Type"]);
            dept.Text = HttpUtility.UrlDecode(Request.QueryString["Dept"]);

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}