using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public static string SetValueForText1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from admin where name=@name and password=@password";
                cmd.Parameters.AddWithValue("@name", txtuname.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());
                SqlDataReader r = cmd.ExecuteReader();
                r.Read();
                //String FName = r["FName"].ToString();
                if ((r.HasRows) && (r["name"].ToString() == txtuname.Text) && r["password"].ToString() == txtpass.Text)
                {
                    Session["userid"] = txtuname.Text.ToString();
                    //  Session["FName"] = FName;
                    r.Close();
                    con.Close();
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    lbl.Text = "Unable To Log In !! Please, check your credentials.";
                    lbl.Visible = true;
                }
            }
            catch (Exception expin)
            {
                lbl.Text = "Invalid Login Credentials" + expin;
            }
        }
        else if (RadioButton2.Checked)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from EmpDetails where EmpID=@EmpID and Password=@Password";
                cmd.Parameters.AddWithValue("@EmpID", txtuname.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
                SqlDataReader r = cmd.ExecuteReader();
                r.Read();
                String FName = r["FName"].ToString();
                if ((r.HasRows) && (r["EmpID"].ToString() == txtuname.Text) && r["Password"].ToString() == txtpass.Text)
                {
                    Session["userid"] = txtuname.Text.ToString();
                    Session["FName"] = FName;
                    r.Close();
                    con.Close();
                    Response.Redirect("Emp/Main.aspx");
                }
                else
                {
                    lbl.Text = "Unable To Log In !! Please, check your credentials.";
                    lbl.Visible = true;
                }
                // lbl.Text = "Employee Part";
            }
            catch (Exception exp)
            {
                lbl.Text = "Invalid Login Credentials" + exp;
            }
        }

        //catch(Exception exp)
        //{
        //    lbl.Text = "SQL Error"+exp;
        //}

    }
}



//if (txtuname.Text.ToString() == "admin" && txtpass.Text.ToString() == "admin123")
//{
//    Session["userid"] = txtuname.Text.ToString();
//    Response.Redirect("Main.aspx");
//}
//else
//{
//    lbl.Text = "Unable To Log In !! Please, check your credentials.";
//    lbl.Visible = true;
//}