<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecentBookmarks.aspx.cs" Inherits="webmark.RecentBookmarks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron d-inline-block">
        <div class="row align-items-center">
            <div class="col-md-8">
                <asp:TextBox ID="SearchTerm" runat="server" ToolTip="Search" placeholder="Search"></asp:TextBox>
                <asp:Label runat="server">in</asp:Label>
                <asp:DropDownList ID="Option" runat="server" Height="33px">
                    <asp:ListItem>title</asp:ListItem>
                    <asp:ListItem>description</asp:ListItem>
                    <asp:ListItem>tags</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Height="41px" Text="Search" Width="117px" OnClick="Search" CssClass="btn btn-primary" />
                <br />
            </div>

            <div class="col-md-4">
                <a href="~/CreateBookmark" runat="server" class="btn btn-primary btn-lg">Add a webmark</a>

            </div>
        </div>
    </div>
    <div class="row">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                    <asp:HyperLink NavigateUrl='<%# Eval("Id", "~/ViewBookmark.aspx?id={0}")  %>' ID="ViewBookmrk" runat="server">
                        <h3>
                            <asp:Label ID="wTitle" runat="server" Text='<%# Eval("Title") %>' /></h3>
                    </asp:HyperLink>
                    <br />
                    <b>Description:</b>&nbsp;
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    <b>Url:</b>&nbsp;
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />
                    <b>Creation Date:</b>&nbsp;
                    <asp:Label ID="creationDateLabel" runat="server" Text='<%# Eval("creationDate") %>' />
                    <br />
                    <b>Votes:</b>&nbsp;
                    <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    <br />
                    <b>Tags:</b>&nbsp;
                    <asp:Label ID="tag1Label" runat="server" Text='<%# Eval("tag1") %>' />
                    <asp:Label ID="tag2Label" runat="server" Text='<%# Eval("tag2") %>' />
                    <asp:Label ID="tag3Label" runat="server" Text='<%# Eval("tag3") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
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
            <ItemTemplate>
                <td runat="server" style="">
                    <asp:HyperLink NavigateUrl='<%# Eval("Id", "~/ViewBookmark.aspx?id={0}")  %>' ID="ViewBookmrk" runat="server">
                        <h3>
                            <asp:Label ID="wTitle" runat="server" Text='<%# Eval("Title") %>' /></h3>
                    </asp:HyperLink>
                    <br />
                    <b>Description:</b>&nbsp;
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                    <br />
                    <b>Url:</b>&nbsp;
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />
                    <b>Tag 1:</b>&nbsp;
                    <asp:Label ID="tag1Label" runat="server" Text='<%# Eval("tag1") %>' />
                    <br />
                    <b>Tag 2:</b>&nbsp;
                    <asp:Label ID="tag2Label" runat="server" Text='<%# Eval("tag2") %>' />
                    <br />
                    <b>Tag 3:</b>&nbsp;
                    <asp:Label ID="tag3Label" runat="server" Text='<%# Eval("tag3") %>' />
                    <br />
                    <b>Creation Date:</b>&nbsp;
                    <asp:Label ID="creationDateLabel" runat="server" Text='<%# Eval("creationDate") %>' />
                    <br />
                    <b>Votes:</b>&nbsp;
                    <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                                <br />
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-primary" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-primary" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [title], [description], [url], [tag1], [tag2], [tag3], [creationDate], [createdBy], [votes] FROM [Bookmarks] ORDER BY [votes] DESC"></asp:SqlDataSource>
    </div>

</asp:Content>
