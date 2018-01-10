using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmark
{
    public partial class CreateBookmark : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=D:\Projects\webmark\webmark\App_Data\aspnet-webmark-20180109014233.mdf;Initial Catalog = aspnet-webmark-20180109014233; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Close();
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = manager.FindById(User.Identity.GetUserId());
            if (user == null)
            {
                HttpContext.Current.Response.Redirect(url: $"{Request.ApplicationPath}Account/Login.aspx");
            }
        }

        public void CreateBookmark_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = manager.FindById(User.Identity.GetUserId());
            string postQuery = "insert into Bookmarks(title,description,url,tag1,tag2,tag3,creationDate,createdBy) output inserted.id values('" +
                wTitle.Text +"','"+
                Description.Text + "','" +
                URL.Text + "','" +
                Tag1.Text + "','" +
                Tag2.Text + "','" +
                Tag3.Text + "','" +
                DateTime.Now + "','" +
                user.Id
                +"');";
            SqlCommand cmd = new SqlCommand(postQuery, con);
            con.Open();
            var id = (Int32)cmd.ExecuteScalar();
            
            con.Close();
            HttpContext.Current.Response.Redirect(url: $"{Request.ApplicationPath}ViewBookmark.aspx?id=" + id);
        }
    }
}