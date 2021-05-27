using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addadmin : System.Web.UI.Page
{
    //DS_ADMIN.Select_AdminMstDataTable ADT = new DS_ADMIN.Select_AdminMstDataTable();
    //DS_ADMINTableAdapters.Select_AdminMstTableAdapter AAdapter = new DS_ADMINTableAdapters.Select_AdminMstTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["userid"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}
        //else
        //{
        //    if (Page.IsPostBack == false)
        //    {
        //        ADT = AAdapter.Select_For_Dispaly(Session["admin"].ToString());
        //        GridView1.DataSource = ADT;
        //        GridView1.DataBind();
        //    }
        //}
    }
    protected void btnaddadmin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        cn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO admin(name,password,cpassword) VALUES (@name,@password,@cpassword)", cn);
        cmd.Parameters.AddWithValue("@name", txtuname.Text.Trim());
        cmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());
        cmd.Parameters.AddWithValue("@cpassword", txtcpass.Text.Trim());
        cmd.ExecuteNonQuery();
        lbl.Text = "Registered Successfully";
        cn.Close();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //int idd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        //AAdapter.Delete(idd);
        //ADT = AAdapter.Select_For_Dispaly(Session["admin"].ToString());
        //GridView1.DataSource = ADT;
        //GridView1.DataBind();
        //lbl.Text = "Record Deleted";
    }
}