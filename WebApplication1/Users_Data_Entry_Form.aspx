<%@ Page Language="C#" AutoEventWireup="true" Codefile="Users_Data_Entry_Form.aspx.cs" Inherits="WebApplication1.Users_Data_Entry_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style14 {
            height: 39px;
        }
        .auto-style15 {
            height: 39px;
            width: 49px;
            font-size: large;
        }
        .auto-style16 {
            height: 32px;
            width: 49px;
            font-size: large;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 30px;
            width: 49px;
            font-size: large;
        }
        .auto-style19 {
            height: 30px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style24 {
            height: 39px;
            font-size: large;
        }
        .auto-style25 {
            width: 100%;
            height: 273px;
        }
        .auto-style26 {
            height: 39px;
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body style="height: 275px">
    <form id="form1" runat="server">
        <div>
        </div>
            <table class="auto-style25">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>User Data Entry Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>User_FName:</strong></td>
                    <td class="auto-style17">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>User_Psw:</strong></td>
                    <td class="auto-style19">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Role_ID:</strong></td>
                    <td class="auto-style14">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceRoleID" DataTextField="Role_ID" DataValueField="Role_ID">
                                    </asp:DropDownList>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style24" colspan="2">
                        <div class="auto-style22">
                            <strong>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="52px" Text="Save the Form" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="52px" OnClientClick="window.close()" Text="Close the Form" />
                            </strong>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" colspan="2">
                                    <asp:SqlDataSource ID="SqlDataSourceRoleID" runat="server" ConnectionString="<%$ ConnectionStrings:db_MKaanUykanConnectionString %>" SelectCommand="SELECT [Role_ID] FROM [tbl_Users]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        <asp:SqlDataSource ID="SqlDataSourceSAVEFORMUser" runat="server" ConnectionString="<%$ ConnectionStrings:db_MKaanUykanConnectionString %>" InsertCommand="INSERT INTO tbl_Users(User_Fname, User_Psw, Role_ID) VALUES (@User_Fname, @User_Psw, @Role_ID)" SelectCommand="SELECT [User_Fname], [User_Psw], [Role_ID] FROM [tbl_Users]">
            <InsertParameters>
                <asp:Parameter Name="User_Fname" />
                <asp:Parameter Name="User_Psw" />
                <asp:Parameter Name="Role_ID" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
