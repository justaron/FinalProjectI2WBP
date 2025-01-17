<%@ Page Language="C#" AutoEventWireup="true" Codefile="Employee_Data_Reports.aspx.cs" Inherits="WebApplication1.Employee_Data_Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Employee Data Reports</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                                <tr style ="background-color:lavender;">
                                    <td>Empl_ID</td>
                                    <td>Empl_Name</td>
                                    <td>Empl_BDate</td>
                                    <td>Empl_Start_Date</td>
                                    <td>Empl_Left_Date</td>
                                    <td>Empl_Address</td>
                                    <td>Empl_City</td>
                                    <td>Empl_Province</td>
                                    <td>Empl_Phone</td>
                                    <td>Empl_Cell</td>
                                    <td>Empl_Email</td>
                                    <td>Dept_ID</td>
                                    <td>Gender_ID</td>
                                    <td>Title_ID</td>
                                    <td>Entered_By</td>
                                    <td>Entered_Date</td>
                                    <td>Is_Empl_Active</td>
                                </tr>
                            <tr></tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr style="background-color:aqua;">
                                    <td><%# Eval("Empl_ID") %></td>
                                    <td><%# Eval("Empl_Name") %></td>
                                    <td><%# Eval("Empl_BDate") %></td>
                                    <td><%# Eval("Empl_Start_Date") %></td>
                                    <td><%# Eval("Empl_Left_Date") %></td>
                                    <td><%# Eval("Empl_Address") %></td>
                                    <td><%# Eval("Empl_City") %></td>
                                    <td><%# Eval("Empl_Province") %></td>
                                    <td><%# Eval("Empl_Phone") %></td>
                                    <td><%# Eval("Empl_Cell") %></td>
                                    <td><%# Eval("Empl_Email") %></td>
                                    <td><%# Eval("Dept_ID") %></td>
                                    <td><%# Eval("Gender_ID") %></td>
                                    <td><%# Eval("Title_ID") %></td>
                                    <td><%# Eval("Entered_By") %></td>
                                    <td><%# Eval("Entered_Date") %></td>
                                    <td><%# Eval("Is_Empl_Active") %></td>
                                </tr>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr style="background-color:burlywood;">
                                    <td><%# Eval("Empl_ID") %></td>
                                    <td><%# Eval("Empl_Name") %></td>
                                    <td><%# Eval("Empl_BDate") %></td>
                                    <td><%# Eval("Empl_Start_Date") %></td>
                                    <td><%# Eval("Empl_Left_Date") %></td>
                                    <td><%# Eval("Empl_Address") %></td>
                                    <td><%# Eval("Empl_City") %></td>
                                    <td><%# Eval("Empl_Province") %></td>
                                    <td><%# Eval("Empl_Phone") %></td>
                                    <td><%# Eval("Empl_Cell") %></td>
                                    <td><%# Eval("Empl_Email") %></td>
                                    <td><%# Eval("Dept_ID") %></td>
                                    <td><%# Eval("Gender_ID") %></td>
                                    <td><%# Eval("Title_ID") %></td>
                                    <td><%# Eval("Entered_By") %></td>
                                    <td><%# Eval("Entered_Date") %></td>
                                    <td><%# Eval("Is_Empl_Active") %></td>
                                </tr>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="46px" OnClientClick="window.close()" Text="Close the Report" Width="228px" />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_BDate], [Empl_Start_Date], [Empl_Left_Date], [Empl_Address], [Empl_City], [Empl_Province], [Empl_Phone], [Empl_Cell], [Empl_EMail], [Dept_ID], [Gender_ID], [Title_ID], [Entered_By], [Entered_Date], [Is_Empl_Active] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
