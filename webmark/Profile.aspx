<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="webmark.Profile" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <hr />
                <dl class="dl-horizontal">
                    <dt>First Name:</dt>
                    <dd><%= UserProfile.FirstName %></dd>
                    <dt>Last Name:</dt>
                    <dd><%= UserProfile.LastName %></dd>
                    <dt>Email:</dt>
                    <dd><%= UserProfile.Email %></dd>
                    <dt>Member Since:</dt>
                    <dd><%= UserProfile.RegisterDate %></dd>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
