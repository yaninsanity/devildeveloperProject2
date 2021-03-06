﻿<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="editProfile.aspx.cs" Inherits="USAAProject.editProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        td
        {
            text-align: right;
            padding: 10px;
        }

    </style>
    <table style="width:100%;">
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px; width: 5%"></td>
            <td style="height: 26px; width: 5%"></td>
            <td style="height: 26px; width: 5%"></td>
        </tr>
        <tr>
            <td style="height: 25px"></td>
            <td style="height: 25px; width: 120px">First Name:</td>
            <td style="height: 25px; width: 200px">
                <asp:TextBox ID="firstNameTextbox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 5%">
                <asp:RequiredFieldValidator ID="fnRequiredFieldValidator" runat="server" ControlToValidate="firstNameTextbox" Display="Dynamic" ErrorMessage="Please type your first name." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 120px">Last Name:</td>
            <td style="width: 200px">
                <asp:TextBox ID="lastNameTextbox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 5%">
                <asp:RequiredFieldValidator ID="lnRequiredFieldValidator" runat="server" ControlToValidate="lastNameTextbox" Display="Dynamic" ErrorMessage="Please type your last name." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="width: 120px; height: 29px;">Email:</td>
            <td style="width: 200px; height: 29px;">
                <asp:TextBox ID="emailTextbox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 5%; height: 29px;">
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" ErrorMessage="Please type your first email." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" ErrorMessage="Please type in correct email format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px; width: 120px">Belt Level:</td>
            <td style="height: 26px; width: 200px">
                <asp:DropDownList ID="beltLevelDropDownList" runat="server" Width="200px">
                    <asp:ListItem Selected="True">Champion</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Brown</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Master Black</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 26px; width: 301px">
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="width: 120px; height: 29px;">Password:</td>
            <td style="width: 200px; height: 29px;">
                <asp:TextBox ID="pswdTextbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 20%; height: 29px;">
                <asp:RequiredFieldValidator ID="pswdRequiredFieldValidator" runat="server" ControlToValidate="pswdTextbox" ErrorMessage="Please type your password." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 42px"></td>
            <td style="width: 120px; height: 42px;">Retype Password:</td>
            <td style="width: 200px; height: 42px;">
                <asp:TextBox ID="repswdTextbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 20%; height: 42px;">
                <asp:CompareValidator ID="pswdCompareValidator" runat="server" ControlToCompare="pswdTextbox" ControlToValidate="repswdTextbox" ErrorMessage="Your password doesn't match. Please type again." ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 120px; height: 22px;">Department</td>
            <td style="width: 200px; height: 22px;">
                <asp:TextBox ID="departmentTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 15%; height: 22px;"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 120px">Location</td>
            <td style="width: 200px">
                <asp:DropDownList ID="locationDropDownList" runat="server" Width="200px">
                    <asp:ListItem Selected="True">Texas</asp:ListItem>
                    <asp:ListItem>Arizona</asp:ListItem>
                    <asp:ListItem>Florida</asp:ListItem>
                    <asp:ListItem>Colorado</asp:ListItem>
                    <asp:ListItem>Virginia</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>England</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 120px">About Me</td>
            <td style="width: 200px">
                <asp:TextBox ID="aboutMeTextbox" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 15%">
                <asp:Button ID="saveButton" runat="server" Text="Save Changes" Width="200px" OnClick="saveButton_Click" />
            </td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
