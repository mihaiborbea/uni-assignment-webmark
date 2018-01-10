using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmark
{
    public partial class RecentBookmarks : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Search(object sender, EventArgs e)
        {
            String searchTerm = (string)SearchTerm.Text.ToString();
            var option = (string)Option.Text.ToString();
            switch (option)
            {
                case "title": SearchByTitle(searchTerm); break;
                case "description": SearchByDescription(searchTerm); break;
                case "tags": SearchByTags(searchTerm); break;
                default: break;
            }
        }

        public void SearchByTitle(string searchTerm)
        {
            SqlDataSource1.SelectCommand = "SELECT[Id], [title], [description], [url], [tag1], [tag2], [tag3], [creationDate], [createdBy], [votes] FROM[Bookmarks] Where Title Like '%" + searchTerm + "%' ORDER BY [Votes] DESC;";
        }

        public void SearchByDescription(string searchTerm)
        {
            SqlDataSource1.SelectCommand = "SELECT [Id], [title], [description], [url], [tag1], [tag2], [tag3], [creationDate], [createdBy], [votes] FROM [Bookmarks] Where Description Like '%" + searchTerm + "%' ORDER BY [Votes] DESC;";
        }

        public void SearchByTags(string searchTerm)
        {
            SqlDataSource1.SelectCommand = "SELECT [Id], [title], [description], [url], [tag1], [tag2], [tag3], [creationDate], [createdBy], [votes] FROM [Bookmarks] Where Tag1 Like '%" + searchTerm + "%' or Tag2 Like '%" + searchTerm + "%' or Tag3 Like '%" + searchTerm + "%' ORDER BY [Votes] DESC;";
        }
    }
}