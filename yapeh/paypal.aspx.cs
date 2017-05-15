using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace yapeh
{
    public partial class paypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            decimal postageCost = 3m;
            decimal productPrice = 15.95m;
            int quantityOfPurchase = int.Parse(productQuantity.SelectedValue);
            decimal subtotal = (quantityOfPurchase * productPrice);
            decimal total = subtotal + postageCost;

            //Authenticate PayPal
            var conf = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(conf).GetAccessToken();

            //Get APIContext Object
            var apiContext = new APIContext(accessToken);

            var productItem = new Item();
            productItem.name = "Test Product";
            productItem.currency = "SGD";
            productItem.price = productPrice.ToString();
            productItem.sku = "LMF@O789"; //Stock Keeping Unit
            productItem.quantity = quantityOfPurchase.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postageCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var trans = new Transaction();
            trans.description = "Your Order of (this product)";
            trans.invoice_number = Guid.NewGuid().ToString(); //id of a record storing order
            trans.amount = transactionAmount;
            trans.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://localhost:26287/cancel.aspx";
            redirectUrls.return_url = "http://localhost:26287/completePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { trans },
                redirect_urls = redirectUrls
            });

            Session["paymentID"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //found the link, send user there
                    Response.Redirect(link.href);
                }
            }
        }
    }
}