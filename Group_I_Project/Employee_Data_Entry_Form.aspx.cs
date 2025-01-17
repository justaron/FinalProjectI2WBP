using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PersonelVeriGirisi : System.Web.UI.Page
    {
        public object Label1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_FName"].DefaultValue = TextBox2.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_LName"].DefaultValue = TextBox3.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_BDate"].DefaultValue = TextBox4.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox6.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Left_Date"].DefaultValue = TextBox7.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Phone"].DefaultValue = TextBox13.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Cell"].DefaultValue = TextBox14.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Email"].DefaultValue = TextBox9.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Dept_ID"].DefaultValue = DropDownList199.SelectedValue;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Entered_Date"].DefaultValue = TextBox12.Text;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_City"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Empl_Province"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Title_ID"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Entered_By"].DefaultValue = DropDownList5.SelectedValue;
            

            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSourceSAVEFORMEmployee.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();
            int s = SqlDataSourceSAVEFORMEmployee.Insert();
            if (s > 0)
            {
                Label2.Text = "New Staff Information : <b>" + "</b><p> Successfully Added ";
                Label2.Visible = true;
            }
            else
                Label2.Text = "New Employee Registration Failed. Please try again after checking your data";
            Label2.Visible = true;
        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {

        }
    }
}