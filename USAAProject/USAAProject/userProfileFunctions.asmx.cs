using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using System.Data.SqlClient;
using System.Data;

using System.Configuration;

namespace USAAProject
{
    /// <summary>
    /// Summary description for userProfileFunctions
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]

    public class userProfileFunctions : System.Web.Services.WebService
    {

        [WebMethod(EnableSession = true)]
        public void GetUserProfile(string uid)
        {
            //Connection string to the database
            string sqlConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["Zeren's database"].ConnectionString;

            //Query to get the user's information
            string sqlSelect = "SELECT username, level, email FROM userprofile where id=@IdValue";

            //setup the connection
            SqlConnection sqlConnection = new SqlConnection(sqlConnectString);

            //Setup for the command to be used for the connection and query
            SqlCommand sqlCommand = new SqlCommand(sqlSelect, sqlConnection);

            //Decode the parameter to use the real value
            sqlCommand.Parameters.Add("@IdValue", System.Data.SqlDbType.NVarChar);
            sqlCommand.Parameters["@IdValue"].Value = HttpUtility.UrlDecode(uid);
     
        }
    }
}
