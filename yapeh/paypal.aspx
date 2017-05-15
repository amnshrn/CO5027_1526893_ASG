<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="paypal.aspx.cs" Inherits="yapeh.paypal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblQuantity" runat="server" Text="Select your quantity" AssociatedControlID="productQuantity"></asp:Label>
    <asp:DropDownList ID="productQuantity" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
    <p>For every purchase above SGD 100, free delivery in Brunei</p>
    <p>Postage and packaging charges of $3 will apply per order</p>
    <p><asp:Button ID="btnBuy" runat="server" Text="Buy Now" OnClick="btnBuy_Click" /></p>
    
</asp:Content>
