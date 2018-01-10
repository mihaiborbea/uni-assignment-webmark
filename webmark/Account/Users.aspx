<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="webmark.Account.Users" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            Name:
            <asp:HyperLink NavigateUrl='<%# Eval("ID", "~/Profile.aspx?id={0}")  %>' ID="UserProfile" runat="server">
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />&nbsp;
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            </asp:HyperLink>
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <asp:Button ID="BlockUser" runat="server" Text="Delete" CssClass="btn btn-xs btn-danger" CommandArgument='<%# Eval("ID") %>' OnClick="BlockUser_Clicked" /><br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-primary" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-primary" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [FirstName], [LastName], [Email] FROM [AspNetUsers]"></asp:SqlDataSource>

</asp:Content>
