<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departments_Data_Report.aspx.cs" Inherits="WebApplication1.Departments_Data_Report" %>

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
            font-size: large;
            font-weight: bold;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Department Data Reports</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <tr style ="background-color:lavender;">
                                <td>Dept_ID</td>
                                <td>Dept_Name</td>
                                <td>Dept_Phone</td>
                                <td>Manager_ID</td>
                            </tr>
                            <tr></tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style ="background-color:aqua;">
                                <td><%# Eval("Dept_ID") %> </td>
                                <td><%# Eval("Dept_Name") %> </td>
                                <td><%# Eval("Dept_Phone") %> </td>
                                <td><%# Eval("Manager_ID") %> </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr style="background-color:burlywood;">
                                <td><%# Eval("Dept_ID") %></td>
                                <td><%# Eval("Dept_Name") %></td>
                                <td><%# Eval("Dept_Phone") %></td>
                                <td><%# Eval("Manager_ID") %></td>
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
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_MKaanUykanConnectionString %>" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="61px" OnClientClick="window.close()" Text="Close the Report" Width="262px" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
