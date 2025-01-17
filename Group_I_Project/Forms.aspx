<%@ Page Language="C#" AutoEventWireup="true" Codefile="Forms.aspx.cs" Inherits="WebApplication1.Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
            height: 194px;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style9 {
            height: 60px;
        }
        .auto-style10 {
            height: 56px;
        }
        .auto-style11 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Forms</strong><table class="auto-style2">
                <tr>
                    <td class="auto-style9">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="target='_blanck'" PostBackUrl="~/Employee_Data_Entry_Form.aspx" Text="Employee Data Entry Form" CssClass="auto-style8" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style9">
                        <strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style8" OnClientClick="target='_blank'" PostBackUrl="~/Employee_Data_Update_Form.aspx" Text="Employee Data Update Form" />
                        </strong>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style10">
                        <strong>
                        <asp:Button ID="Button2" runat="server" OnClientClick="target='_blanck'" PostBackUrl="~/Wages_Data_Entry_Form.aspx" Text="Wages Data Entry Form" CssClass="auto-style8" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style10">
                        <strong>
                        <asp:Button ID="Button9" runat="server" CssClass="auto-style8" OnClientClick="target='_blank'" PostBackUrl="~/Wages_Data_Update_Form.aspx" Text="Wages Data Update Form" />
                        </strong>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style10">
                        <strong>
                        <asp:Button ID="Button3" runat="server" OnClientClick="target='_blanck'" PostBackUrl="~/Department_Data_Entry_Form.aspx" Text="Departments Data Entry Form" CssClass="auto-style8" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style10">
                        <strong>
                        <asp:Button ID="Button10" runat="server" CssClass="auto-style8" OnClientClick="target='_blank'" PostBackUrl="~/Departments_Data_Update_Form.aspx" Text="Departments Data Update Form" />
                        </strong>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style11">
                        <strong>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" OnClientClick="target='_blanck'" PostBackUrl="~/Users_Data_Entry_Form.aspx" Text="Users Data Entry Form" CssClass="auto-style8" />
                        </strong>
                        <br />
                    </td>
                    <td class="auto-style11">
                        <strong>
                        <asp:Button ID="Button11" runat="server" CssClass="auto-style8" OnClientClick="target='_blank'" PostBackUrl="~/Users_Data_Update_Form.aspx" Text="Users Data Update Form" />
                        </strong>
                    </td>
                    </tr>
            </table>
        </div>
        <p>
            <strong>
            <asp:Button ID="Button12" runat="server" CssClass="auto-style8" Height="75px" OnClientClick="window.close()" PostBackUrl="~/Default.aspx" Text="Home" Width="200px" />
            </strong>
        </p>
    </form>
            </body>
</html>
