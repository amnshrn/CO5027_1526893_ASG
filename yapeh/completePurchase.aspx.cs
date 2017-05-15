using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace yapeh
{
    public partial class completePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentID = Session["paymentID"].ToString();

            //create new payment
            if (!String.IsNullOrEmpty(paymentID))
            {
                //create payment obj with paymentID from session
                var payment = new Payment() { id = paymentID };

                //retrieve payerID from querystring and use it to create new payment execution obj
                var payerID = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerID };

                //execute payment
                var executedPayment = payment.Execute(apiContext, paymentExecution);

                //inform user
                litInfo.Text = "<p>Your Order is completed! Thank You</p>";
                btnConfirmPurchase.Visible = false;
            }


        }
    }
}