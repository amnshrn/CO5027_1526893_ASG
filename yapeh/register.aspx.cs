using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace yapeh
{
    public partial class register : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            // create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user
            var user = new IdentityUser() { UserName = txtUsername.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPass.Text);

            IdentityRole endUserRole = new IdentityRole("admin");
            //create role name (admin)
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");
            
            if (result.Succeeded)
            {
                Server.Transfer("login.aspx", true);
            }

            else
            {
                litError.Text = "An Error has occurred: " + result.Errors.FirstOrDefault();
            }
       
        }

        protected void txtPass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}