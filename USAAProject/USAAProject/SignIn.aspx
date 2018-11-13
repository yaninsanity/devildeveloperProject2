<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="USAAProject.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="text-center" style="width: 45%">&nbsp;</td>
            <td <%--class="text-center"--%> style="width: 25%;font-weight:bold;font-size:x-large">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 45%">&nbsp;</td>
            <td <%--class="text-center"--%> style="width: 25%;font-weight:bold;font-size:x-large">Sign In</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45%">&nbsp;</td>
            <td style="width: 25%">Username/Email：</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45%">&nbsp;</td>
            <td style="width: 25%">
                <asp:TextBox ID="userAccTextBox" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45%">&nbsp;</td>
            <td style="width: 25%">Password：</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45%; height: 25px"></td>
            <td style="width: 25%; height: 25px">
                <asp:TextBox ID="pswdTextBox" textMode="Password" runat="server"></asp:TextBox>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 45%; height: 25px">&nbsp;</td>
            <td style="width: 25%; height: 25px">
                &nbsp;</td>
            <td style="height: 25px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 45%; height: 26px">&nbsp;</td>
            <td style="width: 25%; height: 26px">
                <asp:Button ID="signInButton" runat="server"  Text="Sign In" Width="178px" OnClick="signInButton_Click" />
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px" colspan="3">
                <asp:Label ID="errorLabel" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
