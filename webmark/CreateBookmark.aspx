<%@ Page Title="Create Bookmark" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateBookmark.aspx.cs" Inherits="webmark.CreateBookmark" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <h4>a new account</h4>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="row">
        <hr />
        <div class="col-md-8">
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="wTitle" CssClass="col-md-2 control-label">Webmark Title</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="wTitle" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="wTitle"
                        CssClass="text-danger" ErrorMessage="The Title field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="URL" CssClass="col-md-2 control-label">URL</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="URL" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="URL"
                        CssClass="text-danger" ErrorMessage="The URL field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Description" CssClass="col-md-2 control-label">Description</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Description" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Description"
                        CssClass="text-danger" ErrorMessage="The Description is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Tag1" CssClass="col-md-2 control-label">Tag 1</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Tag1" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Tag1"
                        CssClass="text-danger" ErrorMessage="The Tag 1 field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Tag2" CssClass="col-md-2 control-label">Tag 2</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Tag2" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Tag2"
                        CssClass="text-danger" ErrorMessage="The Tag 2 field is required." />
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Tag3" CssClass="col-md-2 control-label">Tag 3</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Tag3" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Tag3"
                        CssClass="text-danger" ErrorMessage="The Tag 3 field is required." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateBookmark_Click" Text="Create" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <h3>Leave a mark on the internet!</h3>
        </div>
    </div>
</asp:Content>
