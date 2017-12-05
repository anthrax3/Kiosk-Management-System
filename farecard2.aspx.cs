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

public partial class farecard2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");


    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DisplayRecord();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

  
    public DataTable DisplayRecord()
    {
        SqlDataAdapter Adp1 = new SqlDataAdapter("select * from train_fare_card where [From]='" + From.SelectedItem.Text + "' and  [To]='" + To.SelectedItem.Text + "' and  [Train No]='" + TrainNo.Text + "' and    Quota='" + quota.SelectedItem.Text + "' ", con);
        DataTable dt = new DataTable();
        Adp1.Fill(dt);
        grid1.DataSource = dt;
        grid1.DataBind();

        return dt;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("farecard2.aspx");
    }
}