<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Momerul.details" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <style type="text/css">
        .kkk {
            height: 70px;
            background: #2c97b5;
        }

        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 25%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style2 {
            text-align: center;
        }
    </style>

    <link href="Boostrap/bootstrap.css" rel="stylesheet" />
    <link href="Boostrap/bootstrap.min.css" rel="stylesheet" />
    <script src="hhhhhh/jquery-3.3.1.js"></script>
    <script src="hhhhhh/jquery-3.3.1.min.js"></script>
    <script src="hhhhhh/jquery-3.2.1.slim.min.js"></script>
    <script src="hhhhhh/download2.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="kkk container-fluid navbar navbar-fixed-top">
            <div class="col-md-11"></div>
            <div class="col-md-1 navbar-header">
                <a href="Admin/Login.aspx" style="color: white">Admin</a>
            </div>
        </div>
        <div class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <br />
            <br />
            <div class="container col-md-12">

                <div class="col-md-3">
                    <a>
                        <img src="Logo/logo-04.png" style="width: 170px" /></a>
                </div>
                <div class="col-md-6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="col-md-3">
                    <asp:Button ID="Button3" runat="server" Text="Search" CssClass="btn btn-primary btn-group-sm" OnClick="Button3_Click" />
                </div>
            </div>

            <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <br />
                        <br />
                        <div class="col-md-2 well">
                            <asp:Panel ID="pnlCategories" runat="server">
                                <asp:DataList ID="ddlCategory" runat="server" CssClass="img-responsive" RepeatColumns="4" CellPadding="2" ForeColor="#333333" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <HeaderTemplate>
                                        <h5 style="color: #8fddeb">Categories</h5>
                                    </HeaderTemplate>
                                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <ItemTemplate>
                                        <div class="list-group">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("CategoryName") %>'
                                                CommandArgument='<%# Eval("CategoryID") %>'></asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="#CC6699" BorderStyle="Ridge" />
                                </asp:DataList>
                                <br />
                            </asp:Panel>
                            <br />
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-8">
                            <asp:Panel ID="pnlProducts" runat="server">
                                <asp:DataList ID="dlProduct" runat="server" RepeatColumns="3" Width="750" Font-Bold="False" Font-Names="Arial Unicode MS" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" OnItemCommand="dlProduct_ItemCommand">
                                    <FooterStyle Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle Font-Bold="True" ForeColor="White" />
                                    <ItemTemplate>
                                        <div class="card">
                                            <div class="auto-style2">
                                               
                                                <asp:Image ID="Image2" Width="180px" Height="200px" runat="server" ImageUrl='<%# Eval("ProductImage") %>' /><br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                                &nbsp;
                                                <%--<asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="Detail" Text="Detail" CssClass="btn-xs" Height="21px" Width="55px" BorderStyle="None"/>--%>
                                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="Detail" Text="Detail" CssClass="btn-xs" Height="21px" Width="55px" BorderStyle="None" />
                                                <br />
                                                <asp:Button ID="Button2" runat="server" Text="Add To Cart" CssClass="btn-xs btn-primary" Height="25px" Width="75px" BorderStyle="None" CommandArgument='<%# Eval("ProductID") %>' CommandName="AddToCart" />
                                                <br />
                                                <br />
                                                <hr />
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SeparatorStyle BackColor="#0099CC" />
                                </asp:DataList>
                            </asp:Panel>
                            </table>
                        </div>
                        <div class="col-md-1">
                        </div>
                        </table>
                    </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        function search() {

        }
    </script>
</body>
</html>