<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="privatePage.aspx.cs" Inherits="yapeh.privatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>You are now in a protected page via successful log in.</p>
    <asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" />
</asp:Content>

