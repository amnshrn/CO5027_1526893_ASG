<%@ Page Title="Login" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="yapeh.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerText">
    <h2>Login</h2>

    <p><asp:Label ID="lblUsername" runat="server" Text="Username: " AssociatedControlID="txtUsername"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValUsername" runat="server" ErrorMessage="Username cannot be blank, please enter your Username." ControlToValidate="txtUsername"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblPassword" runat="server" Text="Password: " AssociatedControlID="txtPass" Width="200px"></asp:Label>
    
    <asp:TextBox ID="txtPass" runat="server" OnTextChanged="txtPass_TextChanged" TextMode="Password"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValPassword" runat="server" ErrorMessage="Password cannot be blank, please enter your password." ControlToValidate="txtPass"></asp:RequiredFieldValidator>

    <p><asp:Button ID="btnLog" runat="server" Text="Log In" OnClick="btnLog_Click" /></p>

    <p>Dont have an account? Click <a href="register.aspx">here</a> to register</p>

    <p><asp:Literal ID="litLoginError" runat="server"></asp:Literal></p>
    </div>
</asp:Content>
