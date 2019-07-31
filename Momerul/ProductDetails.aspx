<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Momerul.m" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
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
        <div>
            <div>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" CssClass="auto-style3" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <br />
                        <br />
                        <br />
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5"></div>

                                <div class="col-md-3">
                                    <asp:Image ID="Image2" runat="server" Width="180px" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' /><hr />
                                    <center><asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="AddToCart" Text="Buy Now" CssClass="btn btn-primary" /></center>
                                </div>

                                <div class="col-md-3">
                                    Product Name:<asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label><br /><br />
                                    Product Id:<asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br /><br />
                                    Description:<asp:Label ID="Label7" runat="server" Text='<%# Eval("ProducDescription") %>'></asp:Label><br /><br />
                                    Price:<asp:Label ID="Label8" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BangladeshConnectionString6 %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
