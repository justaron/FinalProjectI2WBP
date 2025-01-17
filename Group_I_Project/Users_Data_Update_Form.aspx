<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users_Data_Update_Form.aspx.cs" Inherits="WebApplication1.Users_Data_Update_Form" %>

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
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 215px;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style6 {
            width: 215px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 215px;
            height: 51px;
        }
        .auto-style9 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style3"><strong><span class="auto-style2">USER DATA UPDATE FORM</span><br class="auto-style2" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select the User:</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelectUser" DataTextField="User_Fname" DataValueField="User_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="User_ID" DataSourceID="SqlDataSourceSaveUserData" Height="50px" Width="218px">
                            <Fields>
                                <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" ReadOnly="True" SortExpression="User_ID" />
                                <asp:BoundField DataField="User_Fname" HeaderText="User_Fname" SortExpression="User_Fname" />
                                <asp:BoundField DataField="User_Psw" HeaderText="User_Psw" SortExpression="User_Psw" />
                                <asp:BoundField DataField="Role_ID" HeaderText="Role_ID" SortExpression="Role_ID" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="47px" OnClientClick="window.close()" Text="Close the Form" Width="186px" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSourceSelectUser" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [User_ID], [User_Fname] FROM [tbl_Users]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSourceSaveUserData" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [User_ID], [User_Fname], [User_Psw], [Role_ID] FROM [tbl_Users] WHERE ([User_ID] = @User_ID)" UpdateCommand="UPDATE tbl_Users SET User_Fname = @User_Fname, User_Psw = @User_Psw, Role_ID = @Role_ID
WHERE ([User_ID] = @User_ID)" DeleteCommand="DELETE FROM tbl_Users
WHERE ([User_ID] = @User_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="User_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="User_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="User_Fname" />
                                <asp:Parameter Name="User_Psw" />
                                <asp:Parameter Name="Role_ID" />
                                <asp:Parameter Name="User_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
