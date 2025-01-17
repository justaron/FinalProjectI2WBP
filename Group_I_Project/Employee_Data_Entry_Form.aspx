<%@ Page Language="C#" AutoEventWireup="true" Codefile="Employee_Data_Entry_Form.aspx.cs" Inherits="WebApplication1.PersonelVeriGirisi" %>

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
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style38 {
            width: 107px;
            height: 31px;
        }
        .auto-style39 {
            width: 158px;
            height: 31px;
        }
        .auto-style49 {
            font-size: large;
        }
        .auto-style63 {
            width: 107px;
            height: 22px;
        }
        .auto-style64 {
            width: 107px;
            height: 22px;
            font-size: large;
        }
        .auto-style65 {
            width: 158px;
            height: 22px;
        }
        .auto-style67 {
            width: 107px;
            height: 26px;
        }
        .auto-style68 {
            width: 107px;
            height: 26px;
            font-size: large;
        }
        .auto-style69 {
            width: 158px;
            height: 26px;
        }
        .auto-style71 {
            width: 107px;
            height: 30px;
        }
        .auto-style72 {
            width: 107px;
            height: 30px;
            font-size: large;
        }
        .auto-style73 {
            width: 158px;
            height: 30px;
        }
        .auto-style75 {
            width: 107px;
            height: 29px;
        }
        .auto-style76 {
            width: 107px;
            height: 29px;
            font-size: large;
        }
        .auto-style77 {
            width: 158px;
            height: 29px;
        }
        .auto-style79 {
            width: 107px;
            height: 32px;
        }
        .auto-style81 {
            width: 158px;
            height: 32px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style83 {
            height: 61px;
            font-size: large;
        }
        .auto-style84 {
            height: 31px;
            font-size: large;
        }
        .auto-style88 {
            margin-bottom: 0px;
        }
        .auto-style99 {
            font-size: large;
            width: 18px;
        }
        .auto-style107 {
            width: 18px;
            height: 29px;
            font-size: large;
            text-align: center;
        }
        .auto-style110 {
            width: 18px;
            height: 22px;
            font-size: large;
        }
        .auto-style111 {
            width: 18px;
            height: 26px;
            font-size: large;
        }
        .auto-style112 {
            width: 18px;
            height: 30px;
            font-size: large;
        }
        .auto-style113 {
            width: 18px;
            height: 29px;
            font-size: large;
        }
        .auto-style114 {
            width: 18px;
            height: 31px;
            font-size: large;
        }
        .auto-style115 {
            width: 18px;
            height: 32px;
            font-size: large;
        }
        .auto-style116 {
            font-size: large;
            width: 107px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong style="font-size: xx-large">Employee Data Entry Form<br />
                        </strong>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style110"><strong>Employee Name:</strong></td>
                                <td class="auto-style63">
                                    <strong>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style64"><strong>Department:</strong></td>
                                <td class="auto-style65">
                                    <strong>
                                    <asp:DropDownList ID="DropDownList199" runat="server" DataSourceID="SqlDataSourceDeptID" DataTextField="Dept_Name" DataValueField="Dept_ID">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style111"><strong>Employee Lastname:</strong></td>
                                <td class="auto-style67">
                                    <strong>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style68"><strong>Gender:</strong></td>
                                <td class="auto-style69">
                                    <strong>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="34px" RepeatDirection="Horizontal" Width="150px">
                                        <asp:ListItem Selected="True" Value="1">Man</asp:ListItem>
                                        <asp:ListItem Value="2">Woman</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style112"><strong>Employee Birthdate:</strong></td>
                                <td class="auto-style71">
                                    <strong>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style72"><strong>Title ID:</strong></td>
                                <td class="auto-style73">
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSourceTitleID" DataTextField="Title" DataValueField="Title_ID">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style113"><strong>Employee Start Date:</strong></td>
                                <td class="auto-style75">
                                    <strong>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style77">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style110"><strong>Employee Left Date:</strong></td>
                                <td class="auto-style63">
                                    <strong>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style65">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style112"><strong>Employee Address:</strong></td>
                                <td class="auto-style71">
                                    <strong>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style73">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style114"><strong>Employee City:</strong></td>
                                <td class="auto-style38">
                                    <strong>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCity" DataTextField="Empl_City" DataValueField="Empl_City">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                                <td class="auto-style39">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style115"><strong>Employee Province:</strong></td>
                                <td class="auto-style79">
                                    <strong>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceProvince" DataTextField="Empl_Province" DataValueField="Empl_Province">
                                    </asp:DropDownList>
                                    </strong>
                                </td>
                                <td class="auto-style81">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style111"><strong>Employee Phone:</strong></td>
                                <td class="auto-style67">
                                    <strong>
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style88"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style68"><strong>Entered By:</strong></td>
                                <td class="auto-style69">
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSourceSAVEFORMEmployee" DataTextField="Entered_By" DataValueField="Entered_By">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style107"><strong>Employee Cell:</strong></td>
                                <td class="auto-style75">
                                    <strong>
                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style76"><strong>Entered Date:</strong></td>
                                <td class="auto-style77">
                                    <strong>
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style3"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style107"><strong>Employee Email:</strong></td>
                                <td class="auto-style75">
                                    <strong>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style3"></asp:TextBox>
                                    </strong>
                                </td>
                                <td class="auto-style76"><strong>Is Empl Active:</strong></td>
                                <td class="auto-style77">
                                    <strong><asp:CheckBox runat="server" CssClass="auto-style49" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Active ?" ID="CheckBox1" />
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style83" colspan="4">
                                    <div class="auto-style22">
        <div>
        </div>
                                        <strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="50px" Text="Save the Form" OnClick="Button2_Click" Width="200px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="50px" OnClientClick="window.close()" Text="Close the Form" Width="200px" />
                                        </strong>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style83" colspan="4">
                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style84" colspan="4">
                                    <asp:SqlDataSource ID="SqlDataSourceSAVEFORMEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" InsertCommand="INSERT INTO tbl_Employees(Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Left_Date, Empl_Address, Empl_City, Empl_Province, Empl_Phone, Empl_Cell, Empl_EMail, Dept_ID, Gender_ID, Title_ID, Entered_By, Entered_Date, Is_Empl_Active) VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Empl_Left_Date, @Empl_Address, @Empl_City, @Empl_Province, @Empl_Phone, @Empl_Cell, @Empl_EMail, @Dept_ID, @Gender_ID, @Title_ID, @Entered_By, @Entered_Date, @Is_Empl_Active)" SelectCommand="SELECT Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Empl_Left_Date, Empl_Address, Empl_City, Empl_Province, Empl_Phone, Empl_Cell, Empl_EMail, Dept_ID, Gender_ID, Title_ID, Entered_By, Entered_Date, Is_Empl_Active FROM tbl_Employees">
                                        <InsertParameters>
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
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSourceDeptID" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style99">
                                    <asp:SqlDataSource ID="SqlDataSourceCity" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Empl_City] FROM [tbl_Employees]"></asp:SqlDataSource>
                                </td>
                                <td class="auto-style116">
                                    <asp:SqlDataSource ID="SqlDataSourceProvince" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Empl_Province] FROM [tbl_Employees]"></asp:SqlDataSource>
                                </td>
                                <td class="auto-style49">
                                    <asp:SqlDataSource ID="SqlDataSourceTitleID" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT tbl_Employees.Empl_ID, tbl_Employees.Title_ID, tbl_Lookups.LK_ID, tbl_Lookups.Title FROM tbl_Employees INNER JOIN tbl_Lookups ON tbl_Employees.Gender_ID = tbl_Lookups.LK_ID AND tbl_Employees.Title_ID = tbl_Lookups.LK_ID"></asp:SqlDataSource>
                                </td>
                                <td class="auto-style49">
                                    <asp:SqlDataSource ID="SqlDataSourceEnteredBy" runat="server" ConnectionString="<%$ ConnectionStrings:db_ZErenEsendemirConnectionString %>" SelectCommand="SELECT [Entered_By] FROM [tbl_Employees]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
