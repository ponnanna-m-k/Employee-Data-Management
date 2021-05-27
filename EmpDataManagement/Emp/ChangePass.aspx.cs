using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_ChangePass : System.Web.UI.Page
{
    //string strConnString =ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string str = null;
    SqlCommand com;
    byte up;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        String EmpID = Session["userid"].ToString();
        SqlConnection con = new SqlConnection("Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True");
        //con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        con.Open();
        com = new SqlCommand(str, con);
        com.CommandText = "select * from EmpDetails where EmpID='" + @EmpID + "'";
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txtcurrentpass.Text == reader["Password"].ToString())
            {
                up = 1;
            }
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();
            str = "update EmpDetails set Password=@Password where EmpID='" + Session["userid"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 20));
            com.Parameters["@Password"].Value = txtnewpass.Text;
            com.ExecuteNonQuery();
            con.Close();
            lbl.Text = "Password changed Successfully";
        }
        else
        {
            lbl.Text = "Please enter correct Current password";
        }
    }
        
}