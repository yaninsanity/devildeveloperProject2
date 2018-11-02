<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="signupForm.aspx.cs" Inherits="USAAProject.signupForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <table style="width:100%; height: 130px;">
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">First Name</td>
                <td class="text-justify" style="height: 26px">
                    <asp:TextBox ID="fNameTextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="fNameRequiredFieldValidator" runat="server" ControlToValidate="fNameTextbox" ErrorMessage="Please Type Your First Name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">Last Name</td>
                <td class="text-justify" style="height: 26px">
                    <asp:TextBox ID="lNameTextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="lNameRequiredFieldValidator" runat="server" ControlToValidate="lNameTextbox" ErrorMessage="Please Type Your Last Name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">Password</td>
                <td class="text-justify" style="height: 26px">
                    <asp:TextBox ID="passwordTextbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="passwdRequiredFieldValidator" runat="server" ControlToValidate="passwordTextbox" ErrorMessage="Please Type Your Password." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">Re-type Password</td>
                <td class="text-justify" style="height: 26px">
                    <asp:TextBox ID="rePasswordTextbox" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="repasswdCompareValidator" runat="server" ControlToCompare="passwordTextbox" ControlToValidate="rePasswordTextbox" ErrorMessage="Password doesn't match. Please try again." ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">Belt Level</td>
                <td class="text-justify" style="height: 26px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">Champion</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Brown</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>Master Black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">Email Address</td>
                <td class="text-justify" style="height: 26px">
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator0" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Please Type Your Email." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">&nbsp;</td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 278px; height: 26px;" class="text-justify">&nbsp;</td>
                <td class="text-justify" style="width: 230px; height: 26px">&nbsp;</td>
                <td class="text-justify" style="height: 26px">
                    <asp:Button ID="Button1" runat="server" Text="register" Width="130px" />
                </td>
                <td class="text-justify" style="height: 26px">&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
