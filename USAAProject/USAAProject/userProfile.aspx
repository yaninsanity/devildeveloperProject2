﻿<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="USAAProject.userProfile2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .user-profile {
            width: 400px;
            margin-right: auto;
            margin-left:auto;
        }
        .profile-pic {
            float:none;
            margin: 0 auto;
            width:62%;
            height: 62%;
            align-content: center;
        }
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
        .profile-name
        {
            text-align: center;
        }
        .profile-email
        {
            text-align: center;
        }
        .profile-level
        {
            text-align: center;
        }
        .profile-buttons
        {
            text-align: center;
            align-content: center;
        }

     </style>

    <div class="container">
                <div class="user-profile">
                    <!-- User Pic --> 
                    <div class="profile-pic">

                        <img = src="https://static.change.org/profile-img/default-user-profile.svg" class="img-responsive" alt="" />
                    </div>

                    <%--User Title--%>
                    <div class="profile-name">
                        <asp:Label ID="user_name" runat="server"></asp:Label>
                    </div>
                    <div class="profile-email">
                        <asp:Label ID="user_email" runat="server"></asp:Label>
                    </div>
                    <div class="profile-level">
                        <asp:Label ID="user_rank" runat="server"></asp:Label>
                    </div>

                    <%--User Buttons--%>
                    <div class="profile-menu">
                        <div class="profile-buttons">
                            <asp:Button ID="editButton" runat="server" class="btn btn-primary" Text="Edit Profile" OnClick="editButton_Click" />
                            <button type="button" class="btn btn-primary">Search For Users</button>
                        </div>
                    </div>
                    <br />
                    <p class="center">-----------Add milestone progress here.-----------</p>
                </div>
            </div>
</asp:Content>
