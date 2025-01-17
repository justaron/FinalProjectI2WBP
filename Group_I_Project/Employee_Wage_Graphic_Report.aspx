<%@ Page Language="C#" AutoEventWireup="true" Codefile="Employee_Wage_Graphic_Report.aspx.cs" Inherits="WebApplication1.Employee_Wage_Graphic_Report" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 252px;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Employee Wage Graphic Report</strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="684px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Total">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT tbl_Employees.Empl_Name AS Name, SUM(tbl_EmployeeWages.Wage_Total) AS Total, tbl_EmployeeWages.Wage_Year AS Year FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID GROUP BY tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="50px" OnClientClick="window.close()" Text="Close the Report" Width="200px" />
                    </strong></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
