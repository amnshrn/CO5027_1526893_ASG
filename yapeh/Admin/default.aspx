<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="yapeh.Admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="default" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="default">    
        <img src="../Images/homePic.jpg" alt="Home Page image" class="background"/>
        <div class="hoverImage">
        <a href="../product.aspx"><img src="../Images/shopnow.jpg" alt="Shop Now icon" style="height: 89px; width: 386px" class="link"/></a>
        </div>
    </div>
</asp:Content>
