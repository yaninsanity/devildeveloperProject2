using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.Configuration;

namespace USAAProject
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //pass into userAccount and user password
        protected void checkAcc(string acc,string pwd)
        {
            //store correct password
            String correctPswd="";
            
            string tmpString = "";
            bool Error = false;
            String errorMSG="";

            //Connect to the DB

            string connString = WebConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

            MySqlConnection conn = new MySqlConnection(connString);

            string sqlsearch= $"select empPassword,count(empID) founded from employee where empID={acc} OR empEmail={acc}";

            MySqlCommand cmd = new MySqlCommand(sqlsearch, conn);

            conn.Open();
            MySqlDataReader dr = cmd.ExecuteReader();

            

            while (dr.Read())
            {
                correctPswd = (String)dr["empPassword"].ToString().Trim();
                tmpString = (String)dr["founded"].ToString().Trim();
                if (tmpString == "0")
                {
                    Error = true;
                    errorMSG = "Account not founded, Please try another employee ID or employee Email";
                }
                else
                {
                    if (pwd != correctPswd)
                    {
                        errorMSG = "Please try another password.";
                        Error = true;
                    }
                    else
                    {
                        // Session["UID"]
                        Response.Redirect("userProfile.aspx");
                    }

                }
            }
            conn.Close();
            if (Error)

            {
                errorLabel.Text= errorMSG;
                errorLabel.Visible = true;
            }


        }

        protected void signInButton_Click(object sender, EventArgs e)
        {

            try
            {
                checkAcc(userAccTextBox.Text, pswdTextBox.Text);
            }
            catch (Exception ex)
            {
                errorLabel.Visible = true;
                errorLabel.Text = ex.ToString();
            }
        }
    }
}