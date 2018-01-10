<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="webmark.Account.Manage" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                    </dd>
                    <dt id="UserManager" runat="server" visible='false'>Manage Users:</dt>
                    <dd>
                        <asp:HyperLink ID="UserManagerLink" Visible="false" NavigateUrl="/Account/Users" Text="[Manage]" runat="server" />
                    </dd>
                    <dt id="BookmarkManager" runat="server" visible='false'>Manage Bookmark:</dt>
                    <dd>
                        <asp:HyperLink ID="BookmarkManagerLink" Visible="false" NavigateUrl="/Account/ManageBookmarks" Text="[Manage Bookmarks]" runat="server" />
                    </dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
