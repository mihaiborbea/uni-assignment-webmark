<%@ Page Title="Bookmark" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBookmark.aspx.cs" Inherits="webmark.ViewBookmark" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <hr />
                <dl class="dl-horizontal">
                    <dt>Title:</dt>
                    <dd><asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label></dd>
                    <dt>Description:</dt>
                    <dd><asp:Label ID="Label2" runat="server" Text="Label1"></asp:Label></dd>
                    <dt>URL:</dt>
                    <dd><asp:HyperLink ID="UrlLink" runat="server"></asp:HyperLink></dd>
                    <dt>Tag 1:</dt>
                    <dd><asp:Label ID="Label4" runat="server" Text="Label1"></asp:Label></dd>
                    <dt>Tag 2:</dt>
                    <dd><asp:Label ID="Label5" runat="server" Text="Label1"></asp:Label></dd>
                    <dt>Tag 3:</dt>
                    <dd><asp:Label ID="Label6" runat="server" Text="Label1"></asp:Label></dd>
                    <dt>Votes:</dt>
                    <dd><asp:Label ID="Label7" runat="server" Text="Label1"></asp:Label></dd>
                    <dt><asp:Button ID="UpvoteButton" OnClick="Upvote" runat="server" Text="Upvote" CssClass="btn btn-primary" /></dt>
                    <dd><asp:Button ID="DownvoteButton" OnClick="Downvote" runat="server" Text="Downvote" CssClass="btn btn-primary" /></dd>
                </dl>
                <asp:Button ID="DeleteButton" OnClick="DeleteBookmark" runat="server" Text="Delete Bookmark" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>

</asp:Content>
