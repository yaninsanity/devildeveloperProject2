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
            //Connect to the DB
            string connectionStr = "server = 193.112.217.144; user id = root; Pwd = Yzrihxt940512; database = usaa";
            MySqlConnection conn = new MySqlConnection(connectionStr);
            conn.Open();



        }
    }
}