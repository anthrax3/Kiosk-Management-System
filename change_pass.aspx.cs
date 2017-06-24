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

public partial class user_change_pass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial catalog=kiosk;Integrated Security=true");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from reg  wherere username='" + Session["name"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            string username = ds.Tables[0].Rows[0][1].ToString();
            string OLdpassword = ds.Tables[0].Rows[0][4].ToString();
            try
            {
                if (OLdpassword == tcpass.Text)
                {
                    if (npass.Text == cnpass.Text)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("update reg set pass='" + npass.Text + "', retype='" + cnpass.Text + "' where username='" + Session["name"] + "'");
                        int querystatus = cmd.ExecuteNonQuery();
                        if (querystatus > 0)
                        {
                            MessageBox.Show("Password Updated Successfully");
                        }
                        else
                        {
                            MessageBox.Show("Password not updated");
                        }
                    }

                }
            }
            catch (Exception ex)
            {

            }


            finally { con.Close(); }
        }
    }
}