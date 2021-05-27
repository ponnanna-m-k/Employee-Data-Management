using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEmployee : System.Web.UI.Page
{
    //DS_CLASS.CLASSMST_SELECTDataTable ClsDT = new DS_CLASS.CLASSMST_SELECTDataTable();
    //DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter ClsAdapter = new DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter();
    
    //DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    //DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Page.IsPostBack == false)
        //{
        //    ClsDT = ClsAdapter.SELECT();
        //    drpclass.DataSource = ClsDT;
        //    drpclass.DataTextField = "Class";
        //    drpclass.DataValueField = "Cid";
        //    drpclass.DataBind();
        //    drpclass.Items.Insert(0,"SELECT");

        //}
        //AddEmployee.IsPostBack == false;

    }
    protected void btnaddempl_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
            cn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO EmpDetails(EmpID,FName,LName,Email,Phone,JobRole,Salary,JoinDate,Password) VALUES (@EmpID,@FName,@LName,@Email,@Phone,@JobRole,@Salary,@JoinDate,@Password)", cn);
            cmd.Parameters.AddWithValue("@EmpID", txtname0.Text.Trim());
            cmd.Parameters.AddWithValue("@FName", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@LName", txtadd.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtcity.Text.Trim());
            cmd.Parameters.AddWithValue("@Phone", txtmoile.Text.Trim());
            cmd.Parameters.AddWithValue("@JobRole", drpdesignation.Text.Trim());
            cmd.Parameters.AddWithValue("@Salary", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtname0.Text + drpdesignation.Text + txtmoile.Text.Trim());
            cmd.Parameters.Add("@JoinDate", SqlDbType.Date).Value = TextBox2.Text;
            cmd.ExecuteNonQuery();
            lbl.Text = "Registered Successfully";
            cn.Close();
        }
        catch
        {
            lbl.Text = "Employee already exists";
        }
        
    }
}