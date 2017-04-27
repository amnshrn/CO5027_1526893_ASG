using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yapeh
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcessMessage_Click(object sender, EventArgs e)
        {
            //Retrieved from http://tutorials.tinyappco.com/ASPNET/Identity

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("amnshrn12@gmail.com", "@indakuingat");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("amnshrn12@gmail.com", "amnshrn12@gmail.com");
            msg.Subject = "Name: " + titleList.Text + txtName.Text + " Email: " + txtEmail.Text + " Subject: " + txtSubject.Text;
            msg.Body = "Message: "+ txtMessage.Text;            
            
            try
            {
                smtpClient.Send(msg);
                litMessage.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception exp)
            {
                litMessage.Text = "<p>Send failed: " + exp.Message + ":" + exp.InnerException + "</p>";
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}