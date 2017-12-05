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

public partial class admin_buses_bus_view : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("Select * from bus_list", con);
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
        SqlCommand cmd = new SqlCommand("delete FROM bus_list where FlightNo='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'", con);
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
        String s_no = GridView1.DataKeys[e.RowIndex].Value.ToString();
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");
        //TextBox txtname=(TextBox)gr.cell[].control[];  
        TextBox from = (TextBox)row.Cells[1].Controls[0];
        TextBox to = (TextBox)row.Cells[2].Controls[0];
        TextBox avail = (TextBox)row.Cells[4].Controls[0];
        TextBox occ = (TextBox)row.Cells[5].Controls[0];
        TextBox type = (TextBox)row.Cells[6].Controls[0];
        TextBox dept = (TextBox)row.Cells[7].Controls[0];
        TextBox arri = (TextBox)row.Cells[8].Controls[0];
        TextBox dist = (TextBox)row.Cells[9].Controls[0];
        TextBox fare = (TextBox)row.Cells[10].Controls[0];
        //TextBox textadd = (TextBox)row.FindControl("txtadd");  
        //TextBox textc = (TextBox)row.FindControl("txtc");  
        GridView1.EditIndex = -1;
        con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
        SqlCommand cmd = new SqlCommand("update bus_list set [From]='" + from.Text + "',[To]='" + to.Text + "',Type='" + type.Text + "',Departure='" + dept.Text + "',Arrival='" + arri.Text + "',Distance='" + dist.Text + "',Fare='" + fare.Text + "'where ServiceNo='" + s_no + "'", con);
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


