using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmark.Account
{
    public partial class ManageBookmarks : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=D:\Projects\webmark\webmark\App_Data\aspnet-webmark-20180109014233.mdf;Initial Catalog = aspnet-webmark-20180109014233; Integrated Security = True");
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

        protected void DeleteBookmark_Clicked(object sender, EventArgs e)
        {
            var bookmarkId = ((Button)sender).CommandArgument;
            string deletePostQuery = "delete from Bookmarks where Id = '" + bookmarkId + "'";
            SqlCommand cmd = new SqlCommand(deletePostQuery, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}