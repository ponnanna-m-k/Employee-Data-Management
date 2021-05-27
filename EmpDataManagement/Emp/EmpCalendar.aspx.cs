using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_Leave : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
    }
    protected void btnleave_Click(object sender, EventArgs e)
    {
        if (System.DateTime.Now < calfrom.SelectedDate.Date)
        {

           
        } 
        else
        {
            lbl.Text = "select proper date";
        }
    }
    protected void calto_SelectionChanged(object sender, EventArgs e)
    {
       // int day=   calto.SelectedDate.Day - calfrom.SelectedDate.Day;
       // lbldays.Text = day.ToString();

    }
}