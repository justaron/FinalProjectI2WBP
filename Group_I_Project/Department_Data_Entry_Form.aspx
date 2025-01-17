<%@ Page Language="C#" AutoEventWireup="true" Codefile="Department_Data_Entry_Form.aspx.cs" Inherits="WebApplication1.Department_Data_Entry_Form" %>

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
            height: 23px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style14 {
            font-size: large;
            height: 32px;
        }
        .auto-style15 {
            font-size: large;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style17 {
            font-size: large;
            height: 35px;
        }
        .auto-style18 {
            height: 35px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style20 {
            height: 27px;
            font-size: large;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style24 {
            font-size: large;
            height: 35px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Department Data Entry Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="3"><strong>Department Name:</strong></td>
                    <td class="auto-style13">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="3"><strong>Department Phone:</strong></td>
                    <td class="auto-style16">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="3"><strong>Manager:</strong></td>
                    <td class="auto-style18">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" DataSourceID="SqlDataSourceManagerID" DataTextField="Manager_ID" DataValueField="Manager_ID">
                                    </asp:DropDownList>
                                </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="4">
                        <div class="auto-style22">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
                            <strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="52px" Text="Save the Form" OnClick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="54px" OnClientClick="window.close()" Text="Close the Form" Width="199px" />
                            </strong>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                                    <asp:SqlDataSource ID="SqlDataSourceDeptName" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSourceSAVEFORMDepartment" runat="server" OnSelecting="SqlDataSourceSAVEFORMDepartment_Selecting" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" InsertCommand="INSERT INTO tbl_Departments(Dept_Name, Dept_Phone, Manager_ID) VALUES (@Dept_Name, @Dept_Phone, @Manager_ID)" SelectCommand="SELECT [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments]">
                                        <InsertParameters>
                                            <asp:Parameter Name="Dept_Name" />
                                            <asp:Parameter Name="Dept_Phone" />
                                            <asp:Parameter Name="Manager_ID" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                    </td>
                    <td class="auto-style17" colspan="2">
                                    <asp:SqlDataSource ID="SqlDataSourceManagerID" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Manager_ID] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
