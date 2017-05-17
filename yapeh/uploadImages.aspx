<%@ Page Title="Upload Image" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="uploadImages.aspx.cs" Inherits="yapeh.uploadImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="currentImg" runat="server" />
    
    <p><asp:FileUpload ID="imgFileUploadControl" runat="server" /></p>

    <p><asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" /></p>    
    
</asp:Content>
