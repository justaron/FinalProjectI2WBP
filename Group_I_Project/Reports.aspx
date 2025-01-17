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
        .auto-style15 {
            height: 128px;
        }
        .auto-style16 {
            height: 132px;
        }
        .auto-style17 {
            height: 120px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 507px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>EWTA REPORTS</strong><table class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClientClick="target='_blanck'" Text="Employee Data Reports" CssClass="auto-style7" Height="50px" PostBackUrl="~/Employee_Data_Reports.aspx" Width="350px" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style7" Font-Bold="True" Height="50px" PostBackUrl="~/Employees_By_Departments_Report.aspx" Text="Employees By Departments" Width="350px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <strong>
                        <asp:Button ID="Button2" runat="server" OnClientClick="target='_blanck'" Text="Employee Wages Data Reports For Employee" CssClass="auto-style7" PostBackUrl="~/Employee_Wage_Graphic_Report.aspx" Height="50px" Width="500px" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style17">
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" OnClientClick="target='_blanck'" Text="Employee Wages Data Reports For Years" CssClass="auto-style7" PostBackUrl="~/Employee_Wage_Graphic_Reports_2.aspx" Height="50px" Width="500px" />
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <strong>
                        <asp:Button ID="Button3" runat="server" OnClientClick="target='_blanck'" Text="Departments Data Reports" CssClass="auto-style7" Height="50px" Width="350px" PostBackUrl="~/Departments_Data_Report.aspx" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style16">
                        <strong>
                        <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank'" Text="Users Data Reports" CssClass="auto-style7" Height="50px" Width="350px" PostBackUrl="~/Users_Data_Reports.aspx" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        <asp:Button ID="Button7" runat="server" CssClass="auto-style7" Height="75px" OnClientClick="window.close()" PostBackUrl="~/Default.aspx" Text="Home" Width="250px" />
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
