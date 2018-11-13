<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="USAAProject.userProfile2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .user-profile {
            width: 400px;
            margin-right: auto;
            margin-left:auto;
        }
        .profile-pic {
            float: none;
            margin: 0 auto;
            width: 50%;
            height: 50%;
            align-content: center;
        }
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
        .profile-name
        {
            text-align: center;
            margin-left: 85px;
            padding: 5px;
        }
        .profile-email
        {
            text-align: center;
            margin-left: 85px;
            padding: 5px;
        }
        .profile-level
        {
            text-align: center;
            margin-left: 85px;
            padding: 5px;
        }
        .profile-buttons
        {
            text-align: center;
            align-content: center;
            margin-left: 100px;
            padding: 5px;
        }

        #beltLevelForm {
          background-color: #ffffff;
          font-family: Raleway;
          padding: 20px;
          width: 500px;
          min-width: 200px;
          margin-right: auto;
          margin-left:auto;
        }

        /* Hide all steps by default: */
        .tab {
          display: none;
        }

        /* Make circles that indicate the steps of the form: */
        .step {
          height: 15px;
          width: 15px;
          margin: 0 2px;
          background-color: #bbbbbb;
          border: none;  
          border-radius: 50%;
          display: inline-block;
          opacity: 0.5;
        }

        .step.active {
          opacity: 1;
        }

        /* Mark the steps that are finished and valid: */
        .step.finish {
          background-color: #4CAF50;
        }

        .padded
        {
            padding: 20px;
        }

        .rounded
        {
            border-bottom-left-radius: 5%;
            border-bottom-right-radius: 5%;
            border-top-left-radius: 5%;
            border-top-right-radius: 5%;
        }

     </style>

    <div class="container">
                <div class="user-profile">
                    <!-- User Pic --> 
                    <div class="profile-pic">

                        <img = src="https://static.change.org/profile-img/default-user-profile.svg" class="img-responsive padded" alt="" />
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
                            <asp:Button ID="editButton" runat="server" class="btn btn-primary" Text="Edit Profile" OnClick="editButton_Click" />
                        </div>
                    </div>
                    <br />
                    

                        <div id="beltLevelForm" class="rounded">
                          <h1>Belt Level</h1>
                          <!-- One "tab" for each step in the form: -->
                          <div class="tab">
                            <h2>Champion:</h2>               
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Understands the structure & goals of Six Sigma" />
                              <br />
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Uses basic Six Sigma vocabulary terms" />
                               <br />
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Report process issues to green and black belts" />
                          </div>
                          <div class="tab">
                            <h2>Yellow:</h2>
                            <asp:CheckBox ID="CheckBox5" runat="server" Text="Understand basic Six Sigma concepts" />
                               <br />
                            <asp:CheckBox ID="CheckBox6" runat="server" Text="Participates on project teams" />
                               <br />
                            <asp:CheckBox ID="CheckBox7" runat="server" Text="Receives just-in-time training from Green Belts and Black Belts" />
                          </div>
                          <div class="tab">
                            <h2>Green:</h2>
                            <asp:CheckBox ID="CheckBox9" runat="server" Text="Starts and manages Six Sigma projects" />
                              <br />
                            <asp:CheckBox ID="CheckBox10" runat="server" Text="Provides just-in-time training to others" />
                              <br />
                            <asp:CheckBox ID="CheckBox11" runat="server" Text="Receives more expertise from Blacks Belts." />
                          </div>
                          <div class="tab">
                              <h2>Brown:</h2>
                            <asp:CheckBox ID="CheckBox13" runat="server" Text="Has advanced Six Sigma expertise" />
                               <br />
                            <asp:CheckBox ID="CheckBox14" runat="server" Text="Functions as a coach, mentor or a teacher" />
                               <br />
                            <asp:CheckBox ID="CheckBox15" runat="server" Text="Be a project leader and lead a proect team" />
                          </div>
                            <div class="tab">
                                <h2>Black:</h2>
                            <asp:CheckBox ID="CheckBox17" runat="server" Text="Work with leaders to identify gaps and select projects" />
                                 <br />
                            <asp:CheckBox ID="CheckBox18" runat="server" Text="Coaches, mentors, teaches and leads projects" />
                                 <br />
                            <asp:CheckBox ID="CheckBox19" runat="server" Text="Implement Six Sigma culturse-wide" />
                          </div>
                            <div class="tab">
                                <h2>Master Black:</h2>
                            <asp:CheckBox ID="CheckBox21" runat="server" Text="Executive leader that drives the initiative" />
                                 <br />
                            <asp:CheckBox ID="CheckBox22" runat="server" Text="Helps selecting projects and remove barriers for project teams" />
                                 <br />
                            <asp:CheckBox ID="CheckBox23" runat="server" Text="Support changes and develops a Six Sigma culture" />
                          </div>

                          <div style="overflow:auto;">
                            
                          </div>
                          <!-- Circles which indicates the steps of the form: -->
                          <div style="text-align:center;margin-top:40px;">
                              <div style="float: right;">
                              <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                              </div>
                              <div style="float:right;">
                              <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                              </div>                              
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                          </div>
                            
                        </div> 
                    
                    </div>

            </div>

<script>
    var currentTab = 0; // Current tab is set to be the first tab (0)
    var userRank = document.getElementById("ContentPlaceHolder1_user_rank").textContent;
    switch (userRank) {
        case "Champion":
            currentTab = 0;
            break;
        case "Yellow":
            currentTab = 1;
            break;
        case "Green":
            currentTab = 2;
            break;
        case "Brown":
            currentTab = 3;
            break;
        case "Black":
            currentTab = 4;
            break;
        case "Master Black":
            currentTab = 5;
    }

showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").style.display = "none";
  } else {
    document.getElementById("nextBtn").style.display = "inline";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
    var x = document.getElementsByClassName("tab");

    //To use the validation tool, uncomment and follow this outline.
  // Exit the function if any field in the current tab is invalid:
  //if (n == 1 && !validateForm()) return false;

  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

</asp:Content>
