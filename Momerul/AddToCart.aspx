<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Momerul.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Boostrap/bootstrap.css" rel="stylesheet" />
    <link href="Boostrap/bootstrap.min.css" rel="stylesheet" />
    <script src="hhhhhh/jquery-3.3.1.js"></script>
    <script src="hhhhhh/jquery-3.3.1.min.js"></script>
    <script src="hhhhhh/jquery-3.2.1.slim.min.js"></script>
    <script src="hhhhhh/download2.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">

                    <div class="card">
                        <asp:Label ID="Label1" runat="server" Text="Your selected Product Id:"></asp:Label>
                        <div class="card-body form-group">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">Name</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TxtName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TxtName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">Email</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">Mobile</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtMobile" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">Address</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtAddress" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label runat="server">Product Id</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TxtProductId" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtProductId" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </form>
</body>
</html>
