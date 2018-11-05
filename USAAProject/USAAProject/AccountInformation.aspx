<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="AccountInformation.aspx.cs" Inherits="USAAProject.AccountInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td>    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Account Information"></asp:Label>


                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td style="width: 306px">First Name: </td>
            <td style="width: 350px">
                <asp:Label ID="firstNameLabel" runat="server" Text="firstNameLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td style="width: 306px">Last Name: </td>
            <td style="width: 350px">
                <asp:Label ID="lastNameLabel" runat="server" Text="lastNameLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td style="width: 306px">Email: </td>
            <td style="width: 350px">
                <asp:Label ID="emailLabel" runat="server" Text="emailLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td style="width: 306px">Belt Level: </td>
            <td style="width: 350px">
                <asp:Label ID="beltLevelLabel" runat="server" Text="beltLevelLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56px">&nbsp;</td>
            <td style="width: 306px">&nbsp;</td>
            <td style="width: 350px">&nbsp;</td>
            <td>
                <asp:Button ID="updateInfoButton" runat="server" Text="Update" Width="226px" />
            </td>
        </tr>
    </table>
    <br />


</asp:Content>
