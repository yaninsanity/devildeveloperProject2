<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="searchPage.aspx.cs" Inherits="USAAProject.searchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<body style="padding-top: 10px">--%>
    <div class="col-xs-8 col-xs-offset-2">
        <%--<form id="form1" runat="server" class="form-horizontal">--%>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Employee Search Form</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputFirstname" class="control-label col-xs-2">
                            Firstname
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputFirstName" placeholder="Firstname" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputLastname" class="control-label col-xs-2">
                            Lastname
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputLastName" placeholder="Lastname" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputRank" class="control-label col-xs-2">
                            Belt Level
                        </label>
                        <div class="col-xs-10">
                            <input type="text" runat="server" class="form-control"
                                id="inputRank" placeholder="Rank" />
                        </div>
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
                    <h3>Search Results</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-10">
                        <asp:GridView CssClass="table table-bordered"
                            ID="searchResults" runat="server">
                        </asp:GridView>
                    </div>
                </div>
            </div>
    </div>

</asp:Content>
