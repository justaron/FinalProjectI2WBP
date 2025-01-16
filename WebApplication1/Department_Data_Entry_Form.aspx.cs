using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Department_Data_Entry_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlDataSourceSAVEFORMDepartment.InsertParameters["Dept_Name"].DefaultValue = TextBox3.Text;
            SqlDataSourceSAVEFORMDepartment.InsertParameters["Dept_Phone"].DefaultValue = TextBox2.Text;
            SqlDataSourceSAVEFORMDepartment.InsertParameters["Manager_ID"].DefaultValue = DropDownList1.SelectedValue;

            int s = SqlDataSourceSAVEFORMDepartment.Insert();
            if (s > 0)
            {
                Label1.Text = "New Staff Information : <b>" + "</b><p> Successfully Added ";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New Employee Registration Failed. Please try again after checking your data";
            Label1.Visible = true;
        }

        protected void SqlDataSourceSAVEFORMDepartment_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}