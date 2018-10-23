<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userForm.aspx.cs" Inherits="USAAProject.userForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            top: 61px;
            left: 394px;
            height: 76px;
            width: 293px;
        }
        .auto-style2 {
            position: relative;
            top: 125px;
            left: 396px;
            height: 76px;
            width: 290px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome to *App Name*</h1>
        <h2>Please select the following options:</h2>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Mentor" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Text="Mentee" />
        </p>
    </form>
</body>
</html>
