<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="Momerul.Admin.AddNewProduct" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <link href="../Boostrap/bootstrap.min.css" rel="stylesheet" />
     <table class="auto-style1">
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
             </td>
             <td class="auto-style2 form-group">
                 <asp:TextBox ID="TxtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="product" ControlToValidate="TxtProductName" ErrorMessage="Required"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label2" runat="server" Text="Product Category:"></asp:Label>
             </td>
             <td class="auto-style2">
                 <asp:DropDownList ID="DDLCategory" runat="server" Height="19px" Width="300px"></asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Descriptions:"></asp:Label>
             </td>
             <td class="auto-style2 form-group">
                 <asp:TextBox ID="TxtDescriptions" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="description" ControlToValidate="TxtDescriptions" ErrorMessage="Required"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label4" runat="server" Text="Product Image:"></asp:Label>
             </td>
             <td class="auto-style2">
                 <asp:FileUpload ID="ImageUpload" runat="server" />
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="Product Price:"></asp:Label>
             </td>
             <td class="auto-style2 form-group">
                 <asp:TextBox ID="TxtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="price" ControlToValidate="TxtPrice" ErrorMessage="Required"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label6" runat="server" Text="Product Quantity:"></asp:Label>
             </td>
             <td class="auto-style2 form-group">
                 <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ID="Quantity" ControlToValidate="txtQuantity" ErrorMessage="Required"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td class="auto-style2">
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
             </td>
         </tr>
     </table>
     <link href="../Boostrap/bootstrap.min.css" rel="stylesheet" />
    <link href="../Boostrap/bootstrap.css" rel="stylesheet" />

</asp:Content>