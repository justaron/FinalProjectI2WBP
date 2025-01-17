<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departments_Data_Update_Form.aspx.cs" Inherits="WebApplication1.Departments_Data_Update_Form" %>

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
        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style6 {
            width: 287px;
        }
        .auto-style7 {
            width: 287px;
            height: 39px;
        }
        .auto-style8 {
            height: 39px;
        }
        .auto-style9 {
            width: 287px;
            height: 143px;
        }
        .auto-style10 {
            height: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style3"><strong><span class="auto-style2">DEPARTMENT DATA UPDATE FORM</span><br class="auto-style2" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select the Department Name:</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelectDepartment" DataTextField="Dept_Name" DataValueField="Dept_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Dept_ID" DataSourceID="SqlDataSourceSaveDepartmentData" Height="50px" Width="263px">
                            <Fields>
                                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                                <asp:BoundField DataField="Dept_Phone" HeaderText="Dept_Phone" SortExpression="Dept_Phone" />
                                <asp:BoundField DataField="Manager_ID" HeaderText="Manager_ID" SortExpression="Manager_ID" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="50px" OnClientClick="window.close()" Text="Close the Form" Width="200px" />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:SqlDataSource ID="SqlDataSourceSelectDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style8">
                        <asp:SqlDataSource ID="SqlDataSourceSaveDepartmentData" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Dept_ID], [Dept_Name], [Dept_Phone], [Manager_ID] FROM [tbl_Departments] WHERE ([Dept_ID] = @Dept_ID)" UpdateCommand="UPDATE tbl_Departments SET Dept_Name = @Dept_Name, Dept_Phone = @Dept_Phone, Manager_ID = @Manager_ID
WHERE Dept_ID=@Dept_ID" DeleteCommand="DELETE FROM tbl_Departments
WHERE Dept_ID=@Dept_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Dept_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Dept_Name" />
                                <asp:Parameter Name="Dept_Phone" />
                                <asp:Parameter Name="Manager_ID" />
                                <asp:Parameter Name="Dept_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
