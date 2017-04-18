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
        private DbContext identityDbContext;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            // create a dbcontext that specified the connection string
            var identityDBContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user
            var user = new IdentityUser() { UserName = txtUsername.Text, Email = txtEmail.Text };
            //manager.Create(user, txtPass.Text);

            IdentityResult result = manager.Create(user, txtPass.Text); //create role name (admin)
            //roleManager.Create(endUserRole);
            //manager.AddToRole(user.Id, admin);
            //IdentityResult result = manager.Update(user);
            if (result.Succeeded)
            {
                
            }

            else
            {
                litError.Text = "An Error has occurred: " + result.Errors.FirstOrDefault();
            }
       
        }
    }
}