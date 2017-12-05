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

public partial class user_railways_fare_calculator : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label17.Text = Convert.ToString(Session["name"]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String k = con1.trainfares(from.SelectedItem.Text, to.SelectedItem.Text, class1.SelectedItem.Text, quota.SelectedItem.Text, trainno.Text, type.Text, base1.Text,  reservation.Text, superfast.Text, tatkal.Text, grand.Text);
        if (k == "1")
        {
            MessageBox.Show("Inserted successfully");

        }
        else
        {
            MessageBox.Show("Not Inserted");
        }
    }






    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(base1.Text) && !string.IsNullOrEmpty(superfast.Text) && !string.IsNullOrEmpty(reservation.Text) && !string.IsNullOrEmpty(tatkal.Text))
        { 
            grand.Text = (Convert.ToInt32(base1.Text) + Convert.ToInt32(superfast.Text) + Convert.ToInt32(reservation.Text) + Convert.ToInt32(tatkal.Text)).ToString();
    }
}

    }











