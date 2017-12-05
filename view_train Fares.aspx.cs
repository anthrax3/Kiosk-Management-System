using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin_trains_view_train_Fares : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=LAPTOP-1J07RFAT\\MSSQLSERVER01; Initial Catalog=kiosk; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            gvbind();

            
        }
    }

    protected void gvbind()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from train_fare_card", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete FROM train_fare_card where [Train No]='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();

        gvbind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        String t_no = GridView1.DataKeys[e.RowIndex].Value.ToString();
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");
        //TextBox txtname=(TextBox)gr.cell[].control[];  
        TextBox from = (TextBox)row.Cells[1].Controls[0];
        TextBox to = (TextBox)row.Cells[2].Controls[0];
        TextBox class1 = (TextBox)row.Cells[4].Controls[0];
        TextBox quota = (TextBox)row.Cells[5].Controls[0];
        TextBox type = (TextBox)row.Cells[6].Controls[0];
        TextBox base_fare = (TextBox)row.Cells[7].Controls[0];
        TextBox reserve = (TextBox)row.Cells[8].Controls[0];
        TextBox super_fare = (TextBox)row.Cells[9].Controls[0];
        TextBox tatkal_fare = (TextBox)row.Cells[10].Controls[0];
        TextBox total_fare = (TextBox)row.Cells[11].Controls[0];
        //TextBox textadd = (TextBox)row.FindControl("txtadd");  
        //TextBox textc = (TextBox)row.FindControl("txtc");  
        GridView1.EditIndex = -1;
        con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
        SqlCommand cmd = new SqlCommand("update fare_rate_card set [From]='" + from.Text + "',[To]='" + to.Text + "',Class='" + class1.Text + "',Quota='" + quota.Text + "',Type='" + type.Text + "',[Base Fare]='" + base_fare.Text + "',[Reservation Charges]='" + reserve.Text + "',[Super Fast Charges]='" + super_fare.Text + "',[Tatkal  Charges]='" + tatkal_fare.Text + "',[Total Fare]='" + total_fare.Text + "'where [Train No]='" + t_no + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();
        //GridView1.DataBind();  
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }

}


