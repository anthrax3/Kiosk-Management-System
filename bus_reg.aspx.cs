using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class admin_buses_bus_reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");
    connection con1 = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label17.Text = Convert.ToString(Session["name"]);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //text box ID'S--- fn.Text,ln.Text,email.Text...................

        String z = con1.businsert(from.SelectedItem.Text, to.SelectedItem.Text, sn.Text, avail.Text, occ.Text, type.SelectedItem.Text, dept.Text, arr.Text, distance.Text,fare.Text);
        if (z == "1")
        {
            MessageBox.Show("Inserted successfully");

        }
        else
        {
            MessageBox.Show("Not Inserted");
        }
    }
}