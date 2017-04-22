<%@ Page Title="Register" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="yapeh.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerText">
    <h2>Register an account</h2>
    
    <p><asp:Label ID="lblName" runat="server" Text="Full Name: " AssociatedControlID="txtFullName"></asp:Label>    
    <asp:TextBox ID="txtFullName" runat="server" Width="150px"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Name cannot be empty, please enter your Full Name." ControlToValidate="txtFullName"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblEmail" runat="server" Text="Email: " AssociatedControlID="txtEmail"></asp:Label>    
    <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="Email cannot be empty, please enter your email address." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblUsername" runat="server" Text="Username: " AssociatedControlID="txtUsername"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValUsername" runat="server" ErrorMessage="Username cannot be empty, please enter your username." ControlToValidate="txtUsername"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblPassword" runat="server" Text="Password: " AssociatedControlID="txtPass"></asp:Label>
    <asp:TextBox ID="txtPass" runat="server" OnTextChanged="txtPass_TextChanged" TextMode="Password" Width="150px"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValPass" runat="server" ErrorMessage="Password cannot be empty, please enter your password." ControlToValidate="txtPass"></asp:RequiredFieldValidator>

    <p><asp:Button ID="btnReg" runat="server" Text="Sign Up" OnClick="btnReg_Click" /></p>

    <p><asp:Literal ID="litError" runat="server"></asp:Literal></p>
    </div>
</asp:Content>
