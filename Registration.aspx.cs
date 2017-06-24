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

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //text box ID'S--- fn.Text,ln.Text,email.Text...................
        if (Page.IsValid)
        {
            String k = con1.testinsert(fn.Text, ln.Text, email.Text, pass.Text, repass.Text, mob.Text);
            if (k == "1")
            {
                MessageBox.Show("Inserted successfully");
                Response.Redirect("login.aspx");
            }
            else
            {
                MessageBox.Show("Not Inserted");
            }



        }
      

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
}
