﻿using System;
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

public partial class admin_trains_Default : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("Select * from trains_list", con);
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
        SqlCommand cmd = new SqlCommand("delete FROM trains_list where TrainNo='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'", con);
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
        TextBox dept = (TextBox)row.Cells[4].Controls[0];
        TextBox arr = (TextBox)row.Cells[5].Controls[0];
        TextBox sl = (TextBox)row.Cells[6].Controls[0];
        TextBox a3 = (TextBox)row.Cells[7].Controls[0];
        TextBox a2 = (TextBox)row.Cells[8].Controls[0];
        TextBox a1 = (TextBox)row.Cells[9].Controls[0];
        TextBox cc = (TextBox)row.Cells[10].Controls[0];
        TextBox s2 = (TextBox)row.Cells[10].Controls[0];
        TextBox type = (TextBox)row.Cells[11].Controls[0];
        TextBox quota = (TextBox)row.Cells[12].Controls[0];
        TextBox doj = (TextBox)row.Cells[13].Controls[0];
        //TextBox textadd = (TextBox)row.FindControl("txtadd");  
        //TextBox textc = (TextBox)row.FindControl("txtc");  
        GridView1.EditIndex = -1;
        con.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
        SqlCommand cmd = new SqlCommand("update trains_list set [From]='" + from.Text + "', [To]='" + to.Text + "', Type='" + type.Text + "', Dept='" + dept.Text + "', Arri='" + arr.Text + "', avail_SL='" + sl.Text + "', avail_3A='" + a3.Text + "', avail_2A='" + a2.Text + "', avail_1A='" + a1.Text + "', avail_CC='" + cc.Text + "', avail_2S='" + s2.Text + "' where TrainNo='" + t_no + "'", con);
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


