<%@ Page Language="C#" AutoEventWireup="true" Codefile="Reports.aspx.cs" Inherits="WebApplication1.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 453px;
        }
        .auto-style6 {
            height: 111px;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style9 {
            height: 71px;
        }
        .auto-style10 {
            height: 120px;
            text-align: right;
        }
        .auto-style12 {
            height: 120px;
            text-align: left;
        }
        .auto-style15 {
            height: 128px;
        }
        .auto-style16 {
            height: 132px;
        }
    </style>
</head>
<body style="height: 507px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Reports</strong><table class="auto-style2">
                <tr>
                    <td class="auto-style6" colspan="2">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClientClick="target='_blanck'" Text="Employee Data Reports" CssClass="auto-style7" Height="72px" PostBackUrl="~/Employee_Data_Reports.aspx" Width="356px" />
                        </strong>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <strong>
                        <asp:Button ID="Button2" runat="server" OnClientClick="target='_blanck'" Text="Employee Wages Data Reports For Employee" CssClass="auto-style7" PostBackUrl="~/Employee_Wage_Graphic_Report.aspx" Height="81px" Width="601px" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style12">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" OnClientClick="target='_blanck'" Text="Employee Wages Data Reports For Years" CssClass="auto-style7" PostBackUrl="~/Employee_Wage_Graphic_Reports_2.aspx" Height="78px" Width="547px" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="2">
                        <strong>
                        <asp:Button ID="Button3" runat="server" OnClientClick="target='_blanck'" Text="Departments Data Reports" CssClass="auto-style7" Height="77px" Width="350px" PostBackUrl="~/Departments_Data_Report.aspx" />
                        </strong>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        <strong>
                        <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank'" Text="Users Data Reports" CssClass="auto-style7" Height="85px" Width="340px" PostBackUrl="~/Users_Data_Reports.aspx" />
                        </strong>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
