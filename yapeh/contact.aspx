<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="yapeh.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Map code, Retrieved from https://developers.google.com/maps/documentation/javascript/adding-a-google-map#key -->
    <script src="Scripts/map.js"></script>

    <h2>Contact Us</h2>

    <p><asp:Label ID="lblTitle" runat="server" Text="Personal Title: " AssociatedControlID="titleList"></asp:Label>    
         
    <asp:DropDownList ID="titleList" runat="server">
        <asp:ListItem>Mr.</asp:ListItem>
        <asp:ListItem>Mrs.</asp:ListItem>
    </asp:DropDownList></p>        
    
    <p><asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label></p>    
    <asp:TextBox ID="txtName" runat="server" Width="200px" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    <p><asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="Name cannot be left blank,<br /> please enter your full name." ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator></p>

    <p><asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail"></asp:Label></p>    
    <asp:TextBox ID="txtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
    <p><asp:RegularExpressionValidator ID="expValEmail" runat="server" ErrorMessage="Invalid email address!" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>
    <p><asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="Email cannot be left blank,<br /> please enter your valid email address." ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator></p>
    

    <p><asp:Label ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="txtSubject"></asp:Label></p>
    <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
    <p><asp:RequiredFieldValidator ID="reqValSubj" runat="server" ErrorMessage="Subject cannot be left blank,<br /> please enter the subject of your message." ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator></p>

    <p><asp:Label ID="lblMessage" runat="server" Text="Message:" AssociatedControlID="txtMessage"></asp:Label></p>    
    <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>
    <p><asp:RequiredFieldValidator ID="reqValMsg" runat="server" ErrorMessage="Message cannot be left blank, please enter the message you want to send." ControlToValidate="txtMessage" ForeColor="Red"></asp:RequiredFieldValidator></p>

    <p><asp:Button ID="btnProcessMessage" runat="server" Text="Send" OnClick="btnProcessMessage_Click" /></p>
    
    <p><asp:Literal ID="litMessage" runat="server"></asp:Literal></p>


    <div id="lcbMap"></div>   
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCpTxmoyM1316oR9UqCwmgPEbtp_Z2Eii8&callback=initMap"></script>    
</asp:Content>
