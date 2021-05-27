using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Changepass : System.Web.UI.Page
{
    //DS_ADMIN.Select_AdminMstDataTable ADT = new DS_ADMIN.Select_AdminMstDataTable();
    //DS_ADMINTableAdapters.Select_AdminMstTableAdapter AAdapter = new DS_ADMINTableAdapters.Select_AdminMstTableAdapter();
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
        com.CommandText = "select * from admin where name='" + @EmpID + "'";
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
            str = "update admin set password=@password,cpassword=@password where name='" + Session["userid"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 20));
            com.Parameters["@password"].Value = txtnewpass.Text;
            com.ExecuteNonQuery();
            con.Close();
            lbl.Text = "Password changed Successfully";
        }
        else
        {
            lbl.Text = "Please e    nter correct Current password";
        }
    }
}