using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webmark.Models;

namespace webmark
{
    public partial class Profile : System.Web.UI.Page
    {
        public ApplicationUser UserProfile { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            var userId = Request.QueryString["id"];
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            UserProfile = manager.FindById(userId);
        }
    }
}