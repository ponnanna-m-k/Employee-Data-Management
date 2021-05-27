using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GenerateSalary : System.Web.UI.Page
{
    string str = null;
    SqlCommand com;
    byte up;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnselect_Click(object sender, EventArgs e)
    {

    }
    protected void drpclass_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  

    protected void txtda_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txthr_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btngeneratesalary_Click(object sender, EventArgs e)
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
            lbldesign0.Text = r["Fname"].ToString();
            lbldesign.Text = r["JobRole"].ToString();
            lblsalary.Text = r["Salary"].ToString();
            var tem = r["Fname"].ToString();
            //con.Close();
        }
        catch (Exception exp)
        {
            err.Text = "No Records Found ";
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
    }


    protected void Button11_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    SqlConnection con = new SqlConnection();
        //    con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        //    SqlCommand cmd2 = new SqlCommand();
        //    con.Open();
        //    cmd2.Connection = con;
        //    //cmd2.CommandText = "update EmpDetails set Salary=@Salary,JobRole=@JobRole where EmpID=@EmpID";
        //    cmd2.CommandText = "update EmpDetails set Salary=@Salary,JobRole=@JobRole where EmpID=@EmpID";
        //    cmd2.Parameters.AddWithValue("@EmpID", TextBox1.Text.Trim());
        //    cmd2.Parameters.AddWithValue("@JobRole", drpdesignation.Text.Trim());
        //    cmd2.Parameters.AddWithValue("@EmpID", TextBox2.Text.Trim());
        //    SqlDataReader r = cmd2.ExecuteReader();
        //    r.Read();
        //    lbldesign0.Text = r["Fname"].ToString();
        //    lbldesign.Text = r["JobRole"].ToString();
        //    lblsalary.Text = r["Salary"].ToString();
        //    con.Close();
        //}
        //catch (Exception exp)
        //{
        //    err0.Text = "Something went wrong, Try again..!";
        //}
    }
}