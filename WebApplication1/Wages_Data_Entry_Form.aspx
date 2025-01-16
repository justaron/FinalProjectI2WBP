<%@ Page Language="C#" AutoEventWireup="true" Codefile="Wages_Data_Entry_Form.aspx.cs" Inherits="WebApplication1.Wages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 200px;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style7 {
            width: 100%;
            margin-bottom: 22px;
        }
        .auto-style12 {
            height: 33px;
            font-size: large;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            height: 34px;
            font-size: large;
        }
        .auto-style15 {
            height: 34px;
        }
        .auto-style16 {
            height: 32px;
            font-size: large;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 43px;
            font-size: large;
        }
        .auto-style19 {
            height: 43px;
        }
        .auto-style20 {
            height: 27px;
            font-size: large;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style24 {
            font-size: large;
            font-weight: bold;
            margin-top: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style22">
        <div>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style2"><strong style="font-size: xx-large">Wage Data Entry Form</strong></td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12"><strong>Empl_ID:</strong></td>
                    <td class="auto-style13">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Wage_Date:</strong></td>
                    <td class="auto-style15">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Wage_Amount:</strong></td>
                    <td class="auto-style17">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>Wage_Commission:</strong></td>
                    <td class="auto-style19">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">
            <strong>
                        <br />
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="52px" Text="Save the Form" OnClick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style24" Height="53px" OnClientClick="window.close()" Text="Close the Form" Width="208px" />
            </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="2">
                                    &nbsp;</td>
                    <td class="auto-style20" colspan="2">
                                    <asp:SqlDataSource ID="SqlDataSourceSAVEFORMWage" runat="server" ConnectionString="<%$ ConnectionStrings:db_MKaanUykanConnectionString %>" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Date, Wage_Amount, Wage_Commission) VALUES (@Empl_ID, @Wage_Date, @Wage_Amount, @Wage_Commission)" SelectCommand="SELECT [Empl_ID], [Wage_Date], [Wage_Amount], [Wage_Commission] FROM [tbl_EmployeeWages]">
                                        <InsertParameters>
                                            <asp:Parameter Name="Empl_ID" />
                                            <asp:Parameter Name="Wage_Date" />
                                            <asp:Parameter Name="Wage_Amount" />
                                            <asp:Parameter Name="Wage_Commission" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                </td>
                </tr>
            </table>
        </div>
        </div>
    </form>
</body>
</html>
