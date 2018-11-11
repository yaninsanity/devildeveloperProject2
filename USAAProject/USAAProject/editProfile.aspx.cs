using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace USAAProject
{
    public partial class editProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Retrieve the user ID from login to get the information
                string empID = (string)Session["empID"];

                //Connect to the DB
                string connectionStr = "server = 193.112.217.144; user id = root; Pwd = Yzrihxt940512; database = usaa";
                MySqlConnection conn = new MySqlConnection(connectionStr);
                conn.Open();

                //Create a command (query)
                //Need unique user ID in the login page to extract the correct user from the query
                MySqlCommand cmd = new MySqlCommand($"SELECT * FROM employee where empID = {empID}");
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = conn;

                //Read from the database
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    //read user's name
                    firstNameTextbox.Text = reader[1].ToString();
                    lastNameTextbox.Text = reader[2].ToString();
                    emailTextbox.Text = reader[3].ToString();
                    beltLevelDropDownList.SelectedValue = reader[5].ToString();
                    pswdTextbox.Text = reader[4].ToString();
                    departmentTextBox.Text = reader[6].ToString();
                    if (reader[7].ToString() == null) { locationDropDownList.SelectedIndex = 0; }
                    else { locationDropDownList.SelectedValue = reader[7].ToString(); }

                    aboutMeTextbox.Text = reader[8].ToString().Trim();
                    

                }
                conn.Close();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            //Retrieve the user ID from login to get the information
            string empID = (string)Session["empID"];
            string firstName = firstNameTextbox.Text;
            string lastName = lastNameTextbox.Text;
            string email = emailTextbox.Text;
            string password = pswdTextbox.Text;
            string beltLevel = beltLevelDropDownList.SelectedValue.ToString();
            string department = departmentTextBox.Text;
            string location = locationDropDownList.SelectedValue.ToString();
            string aboutMe = aboutMeTextbox.Text; 

            //Connect to the DB
            string connectionStr = "server = 193.112.217.144; user id = root; Pwd = Yzrihxt940512; database = usaa";
            MySqlConnection conn = new MySqlConnection(connectionStr);
            conn.Open();

            //Create a command (query)
            //Need unique user ID in the login page to extract the correct user from the query
            MySqlCommand cmd = new MySqlCommand($"UPDATE employee SET empFirstName='{firstName}', empLastName='{lastName}', empEmail='{email}', empPassword='{password}', empBeltLevel='{beltLevel}',department='{department}',location='{location}',aboutme='{aboutMe}' where empID = '{empID}';");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;

            //Read from the database
            MySqlDataReader reader = cmd.ExecuteReader();
            conn.Close();

            //Redirect back to userProle
            Session["empID"] = empID;
            Response.Redirect("userProfile.aspx");
        }
    }
}