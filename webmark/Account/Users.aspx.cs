using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmark.Account
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = manager.FindById(User.Identity.GetUserId());
            var isWrongRole = manager.IsInRole(user.Id, "User");
            if (isWrongRole)
            {
                HttpContext.Current.Response.Redirect(url: $"{Request.ApplicationPath}Default.aspx");
            }
        }

        protected void BlockUser_Clicked(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            Button btn = (Button)sender;
            var user = manager.FindById(btn.CommandArgument);
            Response.Write(user);
            manager.DeleteAsync(user);
            Response.Redirect(Request.RawUrl);
        }
    }
}