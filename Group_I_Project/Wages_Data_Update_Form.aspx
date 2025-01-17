<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wages_Data_Update_Form.aspx.cs" Inherits="WebApplication1.Wages_Data_Update_Form" %>

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
            text-align: center;
            font-size: xx-large;
            height: 74px;
        }
        .auto-style3 {
            width: 304px;
        }
        .auto-style4 {
            width: 304px;
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            height: 23px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style2"><strong>WAGE DATA UPDATE FORM<br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>&nbsp;&nbsp;<span class="auto-style7">Select The Employee That You Want To Update Wage</span></strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelectWageEmployee" DataTextField="Empl_Name" DataValueField="Wage_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSourceUpdateWage" Height="50px" Width="247px">
                            <Fields>
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Wage_Commission" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" ReadOnly="True" SortExpression="Wage_Total" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="41px" OnClientClick="window.close()" Text="Close the Form" Width="170px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSourceUpdateWage" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT Wage_ID, Empl_ID, Wage_Amount, Wage_Commission, Wage_Total FROM tbl_EmployeeWages WHERE (Wage_ID = @Wage_ID)" UpdateCommand="UPDATE tbl_EmployeeWages SET Empl_ID = @Empl_ID, Wage_Date = @Wage_Date, Wage_Amount = @Wage_Amount, Wage_Commission = @Wage_Commission WHERE (Wage_ID = @Wage_ID)" DeleteCommand="DELETE FROM tbl_EmployeeWages
WHERE (Wage_ID = @Wage_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="Wage_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Wage_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Empl_ID" />
                                <asp:Parameter Name="Wage_Date" />
                                <asp:Parameter Name="Wage_Amount" />
                                <asp:Parameter Name="Wage_Commission" />
                                <asp:Parameter Name="Wage_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSourceSelectWageEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT tbl_EmployeeWages.Empl_ID, tbl_EmployeeWages.Wage_ID, tbl_Employees.Empl_Name FROM tbl_EmployeeWages INNER JOIN tbl_Employees ON tbl_EmployeeWages.Empl_ID = tbl_Employees.Empl_ID"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
