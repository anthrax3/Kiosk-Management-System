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

public partial class buses : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");

    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        DisplayRecord();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    public DataTable DisplayRecord()
    {
        SqlDataAdapter Adp1 = new SqlDataAdapter("select * from bus_list where [from]='" + from.SelectedItem.Text + "' and  [To]='" + to.SelectedItem.Text + "'", con);
        DataTable dt = new DataTable();
        Adp1.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        return dt;

    }

}