<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="yapeh.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>

    <div class="map"><img src="Images/map.PNG" style="height: 436px; width: 743px" /></div>
    
    <p><asp:Label ID="lblTitle" runat="server" Text="Personal Title" AssociatedControlID="titleList"></asp:Label>    
    &nbsp;&nbsp;&nbsp;     
    <asp:DropDownList ID="titleList" runat="server">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList></p>        
    
    <p><asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label></p>    
    <asp:TextBox ID="txtName" runat="server" Width="200px" OnTextChanged="txtName_TextChanged"></asp:TextBox>    

    <p><asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail"></asp:Label></p>    
    <asp:TextBox ID="txtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>

    <p><asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label></p>
    <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>

    <p><asp:Label ID="lblMessage" runat="server" Text="Message" AssociatedControlID="txtMessage"></asp:Label></p>    
    <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>

    <p><asp:Button ID="btnProcessMessage" runat="server" Text="Send" OnClick="btnProcessMessage_Click" /></p>
    
    <p><asp:Literal ID="litMessage" runat="server"></asp:Literal></p>
    
    
</asp:Content>
