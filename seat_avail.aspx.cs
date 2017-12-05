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

public partial class user_Airlines_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");

    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        DisplayRecord();
        con.Close();
    }

    public DataTable DisplayRecord()
    {
        SqlDataAdapter Adp1 = new SqlDataAdapter("select * from flights_list where [from]='" + from1.SelectedItem.Text + "' and  [To]='" + to1.SelectedItem.Text + "' and  [Type]='" + type.SelectedItem.Text + "'", con);
        DataTable dt = new DataTable();
        Adp1.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        return dt;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}