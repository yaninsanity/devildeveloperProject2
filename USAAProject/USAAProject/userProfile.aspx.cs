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
    public partial class userProfile2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve the user ID from login to get the information
            string empID = (string)Session["empID"];

            //Connect to the DB
            string connectionStr = "server = 193.112.217.144; user id = root; Pwd = Yzrihxt940512; database = usaa";
            MySqlConnection conn = new MySqlConnection(connectionStr);
            conn.Open();

            //Create a command (query)
            //Need unique user ID in the login page to extract the correct user from the query
            MySqlCommand cmd = new MySqlCommand($"SELECT empFirstName, empLastName, empEmail, empBeltLevel FROM employee where empID = {empID}");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;

            string userName = "";
            string userEmail = "";
            string userRank = "";

            //Read from the database
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                //read user's name
                userName += reader["empFirstName"].ToString() + " " + reader["empLastName"].ToString();
                userName += "<br/>";

                //read user's email
                userEmail += reader["empEmail"].ToString();
                userEmail += "<br/>";

                //read user's 
                userRank += reader["empBeltLevel"].ToString();
                userRank += "<br/>";
            }

            conn.Close();

            user_name.Text = userName;
            user_email.Text = userEmail;
            user_rank.Text = userRank;
        }
        protected void editButton_Click(object sender, EventArgs e)
        {
            string empID = (string)Session["empID"];
            Session["empID"] = empID;
            Response.Redirect("editProfile.aspx");
        }
    }
}
