<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users_Data_Reports.aspx.cs" Inherits="WebApplication1.Users_Data_Reports" %>

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
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Users Data Reports</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <tr style ="background-color:lavender;">
                                <td>User_ID</td>
                                <td>User_FName</td>
                                <td>User_Psw</td>
                                <td>Role_ID</td>
                            </tr>
                            <tr></tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr style="background-color:aqua">
                                <td><%# Eval("User_ID") %></td>
                                <td><%# Eval("User_FName") %></td>
                                <td><%# Eval("User_Psw") %></td>
                                <td><%# Eval("Role_ID") %></td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr style="background-color:burlywood;">
                                <td><%# Eval("User_ID") %></td>
                                <td><%# Eval("User_FName") %></td>
                                <td><%# Eval("User_Psw") %></td>
                                <td><%# Eval("Role_ID") %></td>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_MKaanUykanConnectionString %>" SelectCommand="SELECT [User_ID], [User_Fname], [User_Psw], [Role_ID] FROM [tbl_Users]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style4">
            <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="50px" OnClientClick="window.close()" Text="Close the Form" Width="250px" />
            </strong>
        </div>
    </form>
</body>
</html>
