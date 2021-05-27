using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmpReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = "";
        lstname.Text = "";
        lblmobile.Text = "";
        lbldesign.Text = "";
        lblsalary.Text = "";
        lblemail.Text = "";
        lblstatus.Text = "";
    }
    protected void drpbranch_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from EmpDetails where EmpID=@EmpID";
            cmd.Parameters.AddWithValue("@EmpID", TextBox1.Text.Trim());
            SqlDataReader r = cmd.ExecuteReader();
            r.Read();
            lblname.Text = r["Fname"].ToString();
            lstname.Text = r["LName"].ToString();
            lblmobile.Text = r["Phone"].ToString();
            lbldesign.Text = r["JobRole"].ToString();
            lblsalary.Text = r["Salary"].ToString();
            lblemail.Text = r["Email"].ToString();
            lblstatus.Text = "Active";
            con.Close();
        }
        catch(Exception exp)
        {
            lbl.Text = "No Records Found " ;
        }
    }



    protected void btndelemp_Click(object sender, EventArgs e)
        {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = con;
        cmd2.Parameters.AddWithValue("@EmpID", TextBox1.Text.Trim());
        cmd2.CommandText = "delete from EmpDetails where EmpID=@EmpID";
        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();
        lbl.Text = "Employee's Record Deleted";
    }

        protected void btnstatus_Click(object sender, EventArgs e)
        {
         
        }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}