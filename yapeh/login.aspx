﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="yapeh.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login</h2>
    <asp:Label ID="lblUsername" runat="server" Text="Username: " AssociatedControlID="txtUsername"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

    <p><asp:Label ID="lblPassword" runat="server" Text="Password: " AssociatedControlID="txtPass"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPass" runat="server" OnTextChanged="txtPass_TextChanged" TextMode="Password"></asp:TextBox></p>

    <asp:Button ID="btnLog" runat="server" Text="Log In" />
</asp:Content>
