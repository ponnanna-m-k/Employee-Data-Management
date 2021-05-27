using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_MyAccount : System.Web.UI.Page
{
    //DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable LDT = new DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable();
    //DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter LAdapter = new DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter();

    //DS_SALARY.SALARY_SELECTDataTable SDT = new DS_SALARY.SALARY_SELECTDataTable();
    //DS_SALARYTableAdapters.SALARY_SELECTTableAdapter SAdapter = new DS_SALARYTableAdapters.SALARY_SELECTTableAdapter();\
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String EmpID = Session["userid"].ToString();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        SqlConnection con2 = new SqlConnection();
        con2.ConnectionString = "Data Source=PAVAN-HP\\MYSERVER;Initial Catalog=Employee;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from EmpDetails where EmpID='"+@EmpID+"'";
        SqlDataReader r = cmd.ExecuteReader();
        r.Read();
        lblfname.Text = r["FName"].ToString()+" "+ r["LName"].ToString();
        lbljoin.Text = r["JoinDate"].ToString();
        //lblsalary.Text = r["Salary"].ToString();
        lblasal.Text = r["Phone"].ToString();
        lblrole.Text = r["JobRole"].ToString();
        con.Close();
        con2.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from EmpDetails where EmpID='" + @EmpID + "'",con2);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        //foreach (DataRow row in dt.Rows)
        //{

        //    //Get the byte array from image file
        //    //byte[] imgBytes = (byte[])row["Image"];

        //    //If you want convert to a bitmap file
        //    TypeConverter tc = TypeDescriptor.GetConverter(typeof(Bitmap));
        //    Bitmap MyBitmap = (Bitmap)tc.ConvertFrom(imgBytes);


        //    string imgString = Convert.ToBase64String(imgBytes);
        //    //Set the source with data:image/bmp
        //    var imgSrc = String.Format("data:image/Bmp;base64,{0}\"", imgString);   //img is the Image control ID
        //}
        con2.Close();



        //    LDT = LAdapter.Select_sum_Eid(Convert.ToInt32(Session["eid"].ToString()));
        //if (LDT.Rows[0]["Days"].ToString() != "")
        //{
        //    lblleave.Text = LDT.Rows[0]["Days"].ToString();

        //    LDT = LAdapter.Select_Sum_Eid_status(Convert.ToInt32(Session["eid"].ToString()), "Approve");
        //    if (LDT.Rows[0]["Days"].ToString() != "")
        //    {
        //        lblaleave.Text = LDT.Rows[0]["Days"].ToString();
        //    }

        //    LDT = LAdapter.Select_Sum_Eid_status(Convert.ToInt32(Session["eid"].ToString()), "Cancel");
        //    if (LDT.Rows[0]["Days"].ToString() != "")
        //    {
        //        lblcleave.Text = LDT.Rows[0]["Days"].ToString();
        //    }
        //}


        //SDT = SAdapter.Select_Salary_HOME(Session["acno"].ToString());
        //if (SDT.Rows.Count != 0)
        //{
        //    lblsalary.Text = SDT.Rows[0]["NetPay"].ToString();
        //    lblasal.Text = SDT.Rows[0]["allowance"].ToString();
        //    lbldsal.Text = SDT.Rows[0]["deducation"].ToString();
        //}
    }
}