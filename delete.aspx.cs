using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT; Initial Catalog=kiosk; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String z = con1.testdelete(email.Text);
        if (z == "1")
        {
            MessageBox.Show("deleted successfully");
            Response.Redirect("login.aspx");
        }
        else
        {
            MessageBox.Show("delete failed");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userpage.aspx");
    }
}