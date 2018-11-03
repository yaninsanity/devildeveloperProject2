<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="USAAProject.userProfile" %>

<!DOCTYPE html>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>User Profile</title>

    <style>
        .user-profile {
            width: 400px;
            margin-right: auto;
            margin-left:auto;
        }
        .profile-pic {
            float:none;
            margin: 0 auto;
            width:50%;
            height: 50%;
        }

    </style>
  </head>
<body>
        <div>
              <!-- Navigation Bar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">Devil Developers</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav" >
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Users</a>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="#">Mentor</a>
                          <a class="dropdown-item" href="#">Mentee</a>
                        </div>
                   </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Sign Up</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                  </li>
                </ul>
               <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                  </form>
                
              </div>
            </nav>

       <!-- Content -->
      
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
                            <button type="button" class="btn btn-primary" href="#">Edit Profile</button>
                            <button type="button" class="btn btn-primary" href="#">Search</button>
                        </div>
                    </div>

                    
                </div>
            </div>


           <%-- <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
              
            </asp:ContentPlaceHolder>--%>
        </div>
    

     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
