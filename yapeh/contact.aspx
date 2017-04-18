<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="yapeh.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>

    <p><asp:Label ID="lblTitle" runat="server" Text="Personal Title: " AssociatedControlID="titleList"></asp:Label>    
         
    <asp:DropDownList ID="titleList" runat="server">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList></p>        
    
    <p><asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label></p>    
    <asp:TextBox ID="txtName" runat="server" Width="200px" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Name cannot be left blank, please enter your full name." ControlToValidate="txtName"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail"></asp:Label></p>    
    <asp:TextBox ID="txtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="Email cannot be left blank, please enter your email address." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="txtSubject"></asp:Label></p>
    <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValSubj" runat="server" ErrorMessage="Subject cannot be left blank, please enter the subject of your message." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

    <p><asp:Label ID="lblMessage" runat="server" Text="Message:" AssociatedControlID="txtMessage"></asp:Label></p>    
    <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValMsg" runat="server" ErrorMessage="Message cannot be left blank, please enter the message you want to send." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>

    <p><asp:Button ID="btnProcessMessage" runat="server" Text="Send" OnClick="btnProcessMessage_Click" /></p>
    
    <p><asp:Literal ID="litMessage" runat="server"></asp:Literal></p>
    
    
</asp:Content>
