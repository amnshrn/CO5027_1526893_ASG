using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yapeh
{
    public partial class uploadImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["Id"];
            string filename = productID + ".jpg";

            currentImg.ImageUrl = "~/ProductImages/" + filename; 
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["Id"];

            string filename = productID + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            imgFileUploadControl.SaveAs(saveLocation);
        }
    }
}