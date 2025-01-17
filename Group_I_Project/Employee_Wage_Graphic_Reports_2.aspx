<%@ Page Language="C#" AutoEventWireup="true" Codefile="Employee_Wage_Graphic_Reports_2.aspx.cs" Inherits="WebApplication1.Employee_Wage_Graphic_Reports_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style4 {
            height: 23px;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><strong>Employee Wage Graphic Report By Year</strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="659px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Year" YValueMembers="Total">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT tbl_Employees.Empl_Name AS Name, SUM(tbl_EmployeeWages.Wage_Total) AS Total, tbl_EmployeeWages.Wage_Year AS Year FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID GROUP BY tbl_Employees.Empl_Name, tbl_EmployeeWages.Wage_Year"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td> <strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="50px" OnClientClick="window.close()" Text="Close the Report" Width="200px" />
                    </strong></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
