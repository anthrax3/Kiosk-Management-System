using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial catalog=kiosk;Integrated Security=true");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select email,pass from reg where email='" + user.Text + "' and pass='" + password.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            MessageBox.Show("Invalid UserName or Password");
        }
        else if (dt.Rows.Count > 0)
        {
            if((user.Text=="admin@gmail.com")&& (password.Text=="admin"))
            {
                Session["name"] = user.Text;
                Session["id"] = user.Text;
                Response.Redirect("~/admin/admin.aspx");
                Session.RemoveAll();
            }

            Session["name"] = user.Text;
            Session["id"] = user.Text;
            Response.Redirect("userpage.aspx");
            Session.RemoveAll();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}