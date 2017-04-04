<%@ Page Title="Products" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="yapeh.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="javaScript/lightbox.min.js"></script>

	<div class="galleryTable">
			<h2>All Products</h2>
            <table>					
					<tr>
					    <td><a href="Products/cellPhoneHolder.aspx"><img src="Images/cellPhoneHolder.jpg" alt="Cell Phone Holder" /></a></td>										
					    <td><a href="Products/case.aspx"><img src="Images/case.jpeg" alt="Shockproof Casing" /></a></td>										
					    <td><a href="Products/powercase.aspx"><img src="Images/powercase.jpg" alt="Powercase" /></a></td>
					</tr>					
                    <tr>
                        <td><a href="Products/cellPhoneHolder.aspx"><p>Cell Phone Holder</p></a></td>
                        <td><a href="Products/case.aspx"><p>Shockproof Casing</p></a></td>
                        <td><a href="Products/powercase.aspx"><p>Power Casing</p></a></td>
                    </tr>
                    <tr>
					    <td><a href="Products/speakerDock.aspx"><img src="Images/speakerDock.jpg" alt="Speaker Dock" /></a></td>
                        <td><a href="Products/flexibleCableStand.aspx"><img src="Images/flexibleStandCable.jpg" alt="Flexible Stand Cable" /></a></td>
					    <td><a href="Products/ringPhoneHolder.aspx"><img src="Images/ringPhoneHolder.jpg" alt="iRing Phone Holder" /></a></td>
					</tr>
                    <tr>
                        <td><a href="Products/speakerDock.aspx"><p>Divoom Speaker Dock</p></a></td>
                        <td><a href="Products/flexibleCableStand.aspx"><p>Flexible Stand Cable</p></a></td>
                        <td><a href="Products/ringPhoneHolder.aspx"><p>iRing Phone Holder</p></a></td>
                    </tr>					
			</table>
		</div>
</asp:Content>
