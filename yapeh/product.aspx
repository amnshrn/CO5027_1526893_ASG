<%@ Page Title="Products" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="yapeh.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- REFERENCE LIST
        Retrieved from https://www.amazon.com/iOttie-Holder-iPhone-Samsung-Galaxy/dp/B00JRGOKQ8?ie=UTF8&tag=blogzeus-20
        Retrieved from https://www.zizowireless.com/products/amsw-iph6s
        Retrieved from https://www.aliexpress.com/item/4000Mah-External-Rechargeable-Battery-Power-Case-Backup-Power-Bank-with-Stand-Holder-for-iPhone-6-Plus/32578466213.html?spm=2114.40010208.4.141.nuZFZy
        Retrieved from https://www.amazon.com/Satechi-Portable-Rechargeable-Speaker-Smartphones/dp/B0060O9P1U/ref=sr_1_12?ie=UTF8&keywords=smartphone+speaker+dock&qid=1477751798&sr=8-12&tag=gadgetpicks-20
        Retrieved from https://www.bestlatest.com/cell-phone-holder-4-pack-twb-universal-smartphone-ring-grip-stand-car-mounts-for-iphone-ipad-samsung-htc-nokia-smartphones-tablet-rose-red-e2caf2b51dbbb1a8.html
        Retrieved from http://www.gadgetreview.com/une-bobine-iphone-lightning-cable-review -->
    <script src="javaScript/lightbox.min.js"></script>

	<div class="galleryTable">
			<h2>All Products</h2>
            <table>					
					<tr>
					    <td><a href="Products/cellPhoneHolder.aspx" runat="server"><img src="Images/cellPhoneHolder.jpg" alt="Cell Phone Holder" /></a></td>										
					    <td><a href="Products/case.aspx" runat="server"><img src="Images/case.jpeg" alt="Shockproof Casing" /></a></td>										
					    <td><a href="Products/powercase.aspx" runat="server"><img src="Images/powercase.jpg" alt="Powercase" /></a></td>
					</tr>					
                    <tr>
                        <td><a href="Products/cellPhoneHolder.aspx"><p>Cell Phone Holder</p></a></td>
                        <td><a href="Products/case.aspx"><p>Shockproof Casing</p></a></td>
                        <td><a href="Products/powercase.aspx"><p>Power Casing</p></a></td>
                    </tr>
                    <tr>
					    <td><a href="Products/speakerDock.aspx" runat="server"><img src="Images/speakerDock.jpg" alt="Speaker Dock" /></a></td>
                        <td><a href="Products/flexibleCableStand.aspx" runat="server"><img src="Images/flexibleStandCable.jpg" alt="Flexible Stand Cable" /></a></td>
					    <td><a href="Products/ringPhoneHolder.aspx" runat="server"><img src="Images/ringPhoneHolder.jpg" alt="iRing Phone Holder" /></a></td>
					</tr>
                    <tr>
                        <td><a href="Products/speakerDock.aspx"><p>Divoom Speaker Dock</p></a></td>
                        <td><a href="Products/flexibleCableStand.aspx"><p>Flexible Stand Cable</p></a></td>
                        <td><a href="Products/ringPhoneHolder.aspx"><p>iRing Phone Holder</p></a></td>
                    </tr>					
			</table>
		</div>
    
</asp:Content>
