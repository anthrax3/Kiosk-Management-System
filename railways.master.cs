using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_railways : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Railways";
        Label1.Text ="Welcome" + " "+Convert.ToString(Session["name"]);
    }
}
