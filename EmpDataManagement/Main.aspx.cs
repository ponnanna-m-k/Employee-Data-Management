using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int count = 0;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "SELECT COUNT(*) FROM dbo.EmpDetails";
        count = (int)cmd.ExecuteScalar();
        lblemp.Text = count.ToString();
        lbltme.Text = DateTime.Now.ToString("hh:mm");
        lbldte.Text = DateTime.Now.ToString("dddd, dd MMMM yyyy");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //lbltme.Text = DateTime.Now.ToString("hh:mm:ss");
    }
}