using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Wages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlDataSourceSAVEFORMWage.InsertParameters["Empl_ID"].DefaultValue = TextBox2.Text;
            SqlDataSourceSAVEFORMWage.InsertParameters["Wage_Date"].DefaultValue = TextBox3.Text;
            SqlDataSourceSAVEFORMWage.InsertParameters["Wage_Amount"].DefaultValue = TextBox4.Text;
            SqlDataSourceSAVEFORMWage.InsertParameters["Wage_Commission"].DefaultValue = TextBox5.Text;

            int s = SqlDataSourceSAVEFORMWage.Insert();
            if (s > 0)
            {
                Label1.Text = "New Staff Information : <b>" + "</b><p> Successfully Added ";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New Employee Registration Failed. Please try again after checking your data";
            Label1.Visible = true;
        }
    }
}