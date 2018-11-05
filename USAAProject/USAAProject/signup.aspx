<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="USAAProject.signUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px; width: 230px"></td>
            <td style="height: 26px; width: 289px"></td>
            <td style="height: 26px; width: 340px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px"></td>
            <td style="height: 25px; width: 230px">First Name:</td>
            <td style="height: 25px; width: 289px">
                <asp:TextBox ID="firstNameTextbox" runat="server"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 340px">
                <asp:RequiredFieldValidator ID="fnRequiredFieldValidator" runat="server" ControlToValidate="firstNameTextbox" Display="Dynamic" ErrorMessage="Please type your first name." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 230px">Last Name:</td>
            <td style="width: 289px">
                <asp:TextBox ID="lastNameTextbox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 340px">
                <asp:RequiredFieldValidator ID="lnRequiredFieldValidator" runat="server" ControlToValidate="lastNameTextbox" Display="Dynamic" ErrorMessage="Please type your last name." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="width: 230px; height: 29px;">Email:</td>
            <td style="width: 289px; height: 29px;">
                <asp:TextBox ID="emailTextbox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 340px; height: 29px;">
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" ErrorMessage="Please type your first email." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="emailTextbox" Display="Dynamic" ErrorMessage="Please type in correct email format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="height: 26px; width: 230px">Belt Level:</td>
            <td style="height: 26px; width: 289px">
                <asp:DropDownList ID="beltLevelDropDownList" runat="server" Width="184px">
                    <asp:ListItem Selected="True">Champion</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Brown</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Master Black</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 26px; width: 340px">
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 29px"></td>
            <td style="width: 230px; height: 29px;">Password:</td>
            <td style="width: 289px; height: 29px;">
                <asp:TextBox ID="pswdTextbox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 340px; height: 29px;">
                <asp:RequiredFieldValidator ID="pswdRequiredFieldValidator" runat="server" ControlToValidate="pswdTextbox" ErrorMessage="Please type your password." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 230px">Retype Password:</td>
            <td style="width: 289px">
                <asp:TextBox ID="repswdTextbox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 340px">
                <asp:CompareValidator ID="pswdCompareValidator" runat="server" ControlToCompare="pswdTextbox" ControlToValidate="repswdTextbox" ErrorMessage="Your password doesn't match. Please type again." ForeColor="Red"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 230px">&nbsp;</td>
            <td style="width: 289px">&nbsp;</td>
            <td style="width: 340px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 230px">&nbsp;</td>
            <td style="width: 289px">
                <asp:Button ID="registerButton" runat="server" OnClick="registerButton_Click" Text="Sign Up" Width="191px" />
            </td>
            <td style="width: 340px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
