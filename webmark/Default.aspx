<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webmark._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron d-inline-block">
        <div class="row align-items-center">
            <div class="col-md-8">
                <form>
                    <input type="text" class="input-large search-query" placeholder="Find a webmark" />
                    <label for="mySubmit" class="btn btn-primary btn-lg"><i class="glyphicon glyphicon-search"></i>&nbsp;Find</label>
                    <input id="mySubmit" type="submit" value="Go" class="hidden" />
                </form>
            </div>
            <div class="col-md-4">
                <a href="~/CreateBookmark" runat="server" class="btn btn-primary btn-lg">Add a webmark</a>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <div class="row">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />url:
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />tag1:
                    <asp:Label ID="tag1Label" runat="server" Text='<%# Eval("tag1") %>' />
                    <br />tag2:
                    <asp:Label ID="tag2Label" runat="server" Text='<%# Eval("tag2") %>' />
                    <br />tag3:
                    <asp:Label ID="tag3Label" runat="server" Text='<%# Eval("tag3") %>' />
                    <br />creationDate:
                    <asp:Label ID="creationDateLabel" runat="server" Text='<%# Eval("creationDate") %>' />
                    <br />createdBy:
                    <asp:Label ID="createdByLabel" runat="server" Text='<%# Eval("createdBy") %>' />
                    <br />votes:
                    <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />url:
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                    <br />tag1:
                    <asp:TextBox ID="tag1TextBox" runat="server" Text='<%# Bind("tag1") %>' />
                    <br />tag2:
                    <asp:TextBox ID="tag2TextBox" runat="server" Text='<%# Bind("tag2") %>' />
                    <br />tag3:
                    <asp:TextBox ID="tag3TextBox" runat="server" Text='<%# Bind("tag3") %>' />
                    <br />creationDate:
                    <asp:TextBox ID="creationDateTextBox" runat="server" Text='<%# Bind("creationDate") %>' />
                    <br />createdBy:
                    <asp:TextBox ID="createdByTextBox" runat="server" Text='<%# Bind("createdBy") %>' />
                    <br />votes:
                    <asp:TextBox ID="votesTextBox" runat="server" Text='<%# Bind("votes") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />description:
                    <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                    <br />url:
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                    <br />tag1:
                    <asp:TextBox ID="tag1TextBox" runat="server" Text='<%# Bind("tag1") %>' />
                    <br />tag2:
                    <asp:TextBox ID="tag2TextBox" runat="server" Text='<%# Bind("tag2") %>' />
                    <br />tag3:
                    <asp:TextBox ID="tag3TextBox" runat="server" Text='<%# Bind("tag3") %>' />
                    <br />creationDate:
                    <asp:TextBox ID="creationDateTextBox" runat="server" Text='<%# Bind("creationDate") %>' />
                    <br />createdBy:
                    <asp:TextBox ID="createdByTextBox" runat="server" Text='<%# Bind("createdBy") %>' />
                    <br />votes:
                    <asp:TextBox ID="votesTextBox" runat="server" Text='<%# Bind("votes") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />url:
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />tag1:
                    <asp:Label ID="tag1Label" runat="server" Text='<%# Eval("tag1") %>' />
                    <br />tag2:
                    <asp:Label ID="tag2Label" runat="server" Text='<%# Eval("tag2") %>' />
                    <br />tag3:
                    <asp:Label ID="tag3Label" runat="server" Text='<%# Eval("tag3") %>' />
                    <br />creationDate:
                    <asp:Label ID="creationDateLabel" runat="server" Text='<%# Eval("creationDate") %>' />
                    <br />createdBy:
                    <asp:Label ID="createdByLabel" runat="server" Text='<%# Eval("createdBy") %>' />
                    <br />votes:
                    <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />url:
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />tag1:
                    <asp:Label ID="tag1Label" runat="server" Text='<%# Eval("tag1") %>' />
                    <br />tag2:
                    <asp:Label ID="tag2Label" runat="server" Text='<%# Eval("tag2") %>' />
                    <br />tag3:
                    <asp:Label ID="tag3Label" runat="server" Text='<%# Eval("tag3") %>' />
                    <br />creationDate:
                    <asp:Label ID="creationDateLabel" runat="server" Text='<%# Eval("creationDate") %>' />
                    <br />createdBy:
                    <asp:Label ID="createdByLabel" runat="server" Text='<%# Eval("createdBy") %>' />
                    <br />votes:
                    <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [title], [description], [url], [tag1], [tag2], [tag3], [creationDate], [createdBy], [votes] FROM [Bookmarks] ORDER BY [votes] DESC"></asp:SqlDataSource>
    </div>

</asp:Content>
