<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userForm.aspx.cs" Inherits="USAAProject.userForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 
        {
        margin: 30px;
        align-self: auto;
        border-bottom-style: inset;
        border-top-style: inset;
        border-left-style: inset;
        border-right-style: inset;
        height: 76px;
        width: 200px;
        border-bottom-left-radius: 10px;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        font-size: 20px;
        }
        body
        {
	    background-color:lightgray;
	    text-align: center;
        }
        h1
{
	font-family: Calibri;
    font-size: 32px;
    margin-bottom: 40px;
}
        .main
        {
            background-color: white;
            border: inset;
            border-color: black;
            max-width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <h1>$$#@(&!()$* Mentoring Center</h1>
        <div>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Be a Mentor" />
        </p>
        </div>
        <div>
        <p>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style1" Text="Get Mentored" />
        </p>
        </div>
        </div>
    </form>
</body>
</html>
