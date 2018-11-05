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
    public partial class searchResult : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Connect to the DB
            string connectionStr = "server = 193.112.217.144; user id = root; Pwd = Yzrihxt940512; database = usaa";
            MySqlConnection conn = new MySqlConnection(connectionStr);
            conn.Open();

            //Create a command (query)
            //Need unique user ID in the login page to extract the correct user from the query
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "searchEmployee";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

           

            //Functions to retreive the input info from the user
            if (inputFirstName.Value.Trim() != "")
            {
                MySqlParameter param = new MySqlParameter("eFirstName", inputFirstName.Value);
                cmd.Parameters.Add(param);
            }

            if (inputLastName.Value.Trim() != "")
            {
                MySqlParameter param = new MySqlParameter("eLastName", inputLastName.Value);
                cmd.Parameters.Add(param);
            }

            if (inputRank.Value.Trim() != "")
            {
                MySqlParameter param = new MySqlParameter("eBeltLevel", inputRank.Value);
                cmd.Parameters.Add(param);
            }

            MySqlDataReader reader = cmd.ExecuteReader();

            searchResults.DataSource = reader;
            searchResults.DataBind();
        }
    }
}