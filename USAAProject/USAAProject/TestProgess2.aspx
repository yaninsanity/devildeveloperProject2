<%@ Page Title="" Language="C#" MasterPageFile="~/USAADevilDevelopers.Master" AutoEventWireup="true" CodeBehind="TestProgess2.aspx.cs" Inherits="USAAProject.TestProgess2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#beltLevelForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
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
</style>

<div id="beltLevelForm" >
  <h1>Belt Level</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">Champion:
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox2" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox4" runat="server" Text="Requirement 4" />
  </div>
  <div class="tab">Yellow:
    <asp:CheckBox ID="CheckBox5" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox6" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox7" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox8" runat="server" Text="Requirement 4" />
  </div>
  <div class="tab">Green:
    <asp:CheckBox ID="CheckBox9" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox10" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox11" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox12" runat="server" Text="Requirement 4" />
  </div>
  <div class="tab">Brown:
    <asp:CheckBox ID="CheckBox13" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox14" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox15" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox16" runat="server" Text="Requirement 4" />
  </div>
    <div class="tab">Black:
    <asp:CheckBox ID="CheckBox17" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox18" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox19" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox20" runat="server" Text="Requirement 4" />
  </div>
    <div class="tab">Master Black:
    <asp:CheckBox ID="CheckBox21" runat="server" Text="Requirement 1" />
    <asp:CheckBox ID="CheckBox22" runat="server" Text="Requirement 2" />
    <asp:CheckBox ID="CheckBox23" runat="server" Text="Requirement 3" />
    <asp:CheckBox ID="CheckBox24" runat="server" Text="Requirement 4" />
  </div>

  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</div>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
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
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
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
