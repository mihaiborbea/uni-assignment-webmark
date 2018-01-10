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
    public partial class ViewBookmark : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=D:\Projects\webmark\webmark\App_Data\aspnet-webmark-20180109014233.mdf;Initial Catalog = aspnet-webmark-20180109014233; Integrated Security = True");
        private string bookmarkId;
        private static bool upEnabled = true;
        private static bool downEnabled = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Close();
            bookmarkId = Request.QueryString["id"];
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = manager.FindById(User.Identity.GetUserId());
            var isWrongRole = manager.IsInRole(user.Id, "User");
            if (user == null)
            {
                HttpContext.Current.Response.Redirect(url: $"{Request.ApplicationPath}Account/Login.aspx");
            }
            if (isWrongRole)
            {
                DeleteButton.Visible = false;
            }
            if (Request.QueryString["voted"] != null)
            {
                upEnabled = Int32.Parse(Request.QueryString["voted"]) == 1 ? false : true;
                downEnabled = Int32.Parse(Request.QueryString["voted"]) == 2 ? false : true;
            }
            UpvoteButton.Enabled = upEnabled;
            DownvoteButton.Enabled = downEnabled;

            string query = "SELECT * from Bookmarks where Id = '" + bookmarkId+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            SqlDataReader dataReader = cmd.ExecuteReader();

            if (dataReader.Read())
            {
                Label1.Text = dataReader["Title"].ToString();
                Label2.Text = dataReader["Description"].ToString();
                Label4.Text = dataReader["Tag1"].ToString();
                Label5.Text = dataReader["Tag2"].ToString();
                Label6.Text = dataReader["Tag3"].ToString();
                Label7.Text = dataReader["Votes"].ToString();
                UrlLink.NavigateUrl = "http://" + dataReader["Url"].ToString();
                UrlLink.Text = UrlLink.NavigateUrl;
            }
            con.Close();
        }

        public void Upvote(object sender, EventArgs e)
        {
                con.Open();
                string upvoteQuery = "update Bookmarks set Votes = Votes + 1";
                SqlCommand cmd = new SqlCommand(upvoteQuery, con);

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("~/ViewBookmark.aspx?id=" + this.bookmarkId + "&voted=1");
        }

        public void Downvote(object sender, EventArgs e)
        {
                con.Open();
                string downvoteQuery = "update Bookmarks set Votes = Votes - 1";
                SqlCommand cmd = new SqlCommand(downvoteQuery, con);

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("~/ViewBookmark.aspx?id=" + this.bookmarkId +"&voted=2");

        }

        public void DeleteBookmark(object sender, EventArgs e)
        {
            string deletePostQuery = "delete from Bookmarks where Id = '" + bookmarkId + "'";
            SqlCommand cmd = new SqlCommand(deletePostQuery, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/");
        }
    }
}