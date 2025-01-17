<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Data_Update_Form.aspx.cs" Inherits="WebApplication1.Employee_Data_Update_Form" %>

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
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 187px;
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>EMPLOYEE DATA UPDATE FORM</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select the Employee:<br />
                        </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceSelectEmployee" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Empl_ID" DataSourceID="SqlDataSourceUpdateAll" Height="50px" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="Empl_FName" HeaderText="Empl_FName" SortExpression="Empl_FName" />
                                <asp:BoundField DataField="Empl_LName" HeaderText="Empl_LName" SortExpression="Empl_LName" />
                                <asp:BoundField DataField="Empl_BDate" HeaderText="Empl_BDate" SortExpression="Empl_BDate" />
                                <asp:BoundField DataField="Empl_Start_Date" HeaderText="Empl_Start_Date" SortExpression="Empl_Start_Date" />
                                <asp:BoundField DataField="Empl_City" HeaderText="Empl_City" SortExpression="Empl_City" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" ReadOnly="True" SortExpression="Empl_Name" />
                                <asp:BoundField DataField="Empl_Left_Date" HeaderText="Empl_Left_Date" SortExpression="Empl_Left_Date" />
                                <asp:BoundField DataField="Empl_Address" HeaderText="Empl_Address" SortExpression="Empl_Address" />
                                <asp:BoundField DataField="Empl_Province" HeaderText="Empl_Province" SortExpression="Empl_Province" />
                                <asp:BoundField DataField="Empl_Phone" HeaderText="Empl_Phone" SortExpression="Empl_Phone" />
                                <asp:BoundField DataField="Empl_Cell" HeaderText="Empl_Cell" SortExpression="Empl_Cell" />
                                <asp:BoundField DataField="Empl_EMail" HeaderText="Empl_EMail" SortExpression="Empl_EMail" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                                <asp:BoundField DataField="Gender_ID" HeaderText="Gender_ID" SortExpression="Gender_ID" />
                                <asp:BoundField DataField="Title_ID" HeaderText="Title_ID" SortExpression="Title_ID" />
                                <asp:BoundField DataField="Empl_CV_Web" HeaderText="Empl_CV_Web" SortExpression="Empl_CV_Web" />
                                <asp:BoundField DataField="Entered_By" HeaderText="Entered_By" SortExpression="Entered_By" />
                                <asp:BoundField DataField="Entered_Date" HeaderText="Entered_Date" SortExpression="Entered_Date" />
                                <asp:CheckBoxField DataField="Is_Empl_Active" HeaderText="Is_Empl_Active" SortExpression="Is_Empl_Active" />
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" InsertVisible="False" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="50px" OnClientClick="window.close()" Text="Close the Form" Width="200px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSourceUpdateAll" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Empl_FName], [Empl_LName], [Empl_BDate], [Empl_Start_Date], [Empl_City], [Empl_Name], [Empl_Left_Date], [Empl_Address], [Empl_Province], [Empl_Phone], [Empl_Cell], [Empl_EMail], [Dept_ID], [Gender_ID], [Title_ID], [Empl_Photo], [Empl_CV], [Empl_CV_File], [Empl_CV_Web], [Entered_By], [Entered_Date], [Is_Empl_Active], [Empl_ID] FROM [tbl_Employees] WHERE ([Empl_ID] = @Empl_ID)" UpdateCommand="UPDATE tbl_Employees SET Empl_FName =@Empl_FName, Empl_LName =@Empl_LName, Empl_BDate =@Empl_BDate, Empl_Start_Date =@Empl_Start_Date, Empl_Left_Date =@Empl_Left_Date, Empl_Address =@Empl_Address, Empl_City =@Empl_City, Empl_Province =@Empl_Province, Empl_Phone =@Empl_Phone, Empl_Cell =@Empl_Cell, Empl_EMail =@Empl_EMail, Dept_ID =@Dept_ID, Gender_ID =@Gender_ID, Title_ID =@Title_ID, Entered_By =@Entered_By, Entered_Date =@Entered_Date, Is_Empl_Active =@Is_Empl_Active
WHERE Empl_ID=@Empl_ID" DeleteCommand="DELETE FROM tbl_Employees
WHERE Empl_ID=@Empl_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Empl_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Empl_FName" />
                                <asp:Parameter Name="Empl_LName" />
                                <asp:Parameter Name="Empl_BDate" />
                                <asp:Parameter Name="Empl_Start_Date" />
                                <asp:Parameter Name="Empl_Left_Date" />
                                <asp:Parameter Name="Empl_Address" />
                                <asp:Parameter Name="Empl_City" />
                                <asp:Parameter Name="Empl_Province" />
                                <asp:Parameter Name="Empl_Phone" />
                                <asp:Parameter Name="Empl_Cell" />
                                <asp:Parameter Name="Empl_EMail" />
                                <asp:Parameter Name="Dept_ID" />
                                <asp:Parameter Name="Gender_ID" />
                                <asp:Parameter Name="Title_ID" />
                                <asp:Parameter Name="Entered_By" />
                                <asp:Parameter Name="Entered_Date" />
                                <asp:Parameter Name="Is_Empl_Active" />
                                <asp:Parameter Name="Empl_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSourceSelectEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
