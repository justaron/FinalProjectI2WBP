using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Users_Data_Entry_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlDataSourceSAVEFORMUser.InsertParameters["User_FName"].DefaultValue = TextBox2.Text;
            SqlDataSourceSAVEFORMUser.InsertParameters["User_Psw"].DefaultValue = TextBox3.Text;
            SqlDataSourceSAVEFORMUser.InsertParameters["Role_ID"].DefaultValue = DropDownList1.SelectedValue;
            string name = TextBox2.Text;
            int s = SqlDataSourceSAVEFORMUser.Insert();
            if (s > 0)
            {
                Label1.Text = "New Staff Information : <b>" + name + "</b><p> Successfully Added ";
                Label1.Visible = true;
            }
            else
                Label1.Text = "New Employee Registration Failed. Please try again after checking your data";
            Label1.Visible = true;

        }
    }
}