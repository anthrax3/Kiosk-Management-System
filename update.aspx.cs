using System.Windows;
using System.Web.Security;
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

using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from reg where email='" + Session["name"] + "'", con);
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            if (reader.Read())
            {
                fn.Text = reader.GetString(0);
                ln.Text = reader.GetString(1);
              


                mob.Text = reader.GetString(5);

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial catalog=kiosk; Integrated Security=true;");
        try
        {
            con.Open();
            string str = "update reg set firstname='" + fn.Text + "', lastname='" + ln.Text + "', mobile='" + mob.Text + "'where email='" + Convert.ToString(Session["name"]) + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Updated Successfully");
        }
        catch (Exception ee)
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userpage.aspx");
    }
}