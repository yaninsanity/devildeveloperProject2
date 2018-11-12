<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="searchPage.aspx.cs" Inherits="USAAProject.searchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .center
        {
            text-align: center;
            align-content: cetner;
        }
    </style>
    <%--    <style type="text/css">
            *{
                padding-left: 10px;
            }
        </style>--%>


    <%--<body style="padding-top: 10px">--%>
    <div class="col-xs-8 col-xs-offset-2">
        <%--<form id="form1" runat="server" class="form-horizontal">--%>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>
                    <h3 class="center">Employee Search Form</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputFirstname" class="control-label col-xs-2">
                            First Name
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputFirstName" placeholder="First Name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputLastname" class="control-label col-xs-2">
                            Last Name
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputLastName" placeholder="Last Name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputAboutMe" class="control-label col-xs-2">
                            Skills
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="Text1" placeholder="Skills" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputRank" class="control-label col-xs-2">
                            Belt Level
                        <br/>
                        </label>
                        <asp:DropDownList ID="beltLevelDropDownList" runat="server" Width="184px">
                            <asp:ListItem Selected="True">Champion</asp:ListItem>
                            <asp:ListItem>Yellow</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                            <asp:ListItem>White</asp:ListItem>
                            <asp:ListItem>Black</asp:ListItem>
                            <asp:ListItem>Master Black</asp:ListItem>
                            <asp:ListItem>Executive</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-10 col-xs-offset-2">
                            <asp:Button ID="btnSearch" runat="server" Text="Search"
                                CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="center">Search Results</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-10">
                        <asp:GridView CssClass="table table-bordered"
                            ID="searchResults" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 1px">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                           
                        </asp:GridView>
                    </div>
                </div>
            </div>
    </div>

</asp:Content>
