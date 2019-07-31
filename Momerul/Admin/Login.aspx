<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Momerul.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Boostrap/bootstrap.min.css" rel="stylesheet" />
    <link href="../Boostrap/bootstrap.css" rel="stylesheet" />
</head>

<body class="well">
    <form runat="server">
        <div style="margin-left: 500px; margin-top: 150px">
            <table>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" CssClass="form-control" Height="27px" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" Height="27px" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
