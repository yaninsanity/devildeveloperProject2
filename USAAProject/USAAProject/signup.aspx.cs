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
	public partial class signUp : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void registerButton_Click(object sender, EventArgs e)
        {
            Employee tmpEmp=new Employee();
            tmpEmp.FirstName = firstNameTextbox.Text;
            tmpEmp.LastName = lastNameTextbox.Text;
            tmpEmp.Email = emailTextbox.Text;
            tmpEmp.BeltLevel = beltLevelDropDownList.SelectedItem.Value;
            tmpEmp.Password = pswdTextbox.Text;

            addNewAcc(tmpEmp);

        }

        protected void addNewAcc(Employee tmpEmployee)
        {
            //Connect to the DB
            
            string connString = WebConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

            MySqlConnection conn = new MySqlConnection(connString);

            string InsertSql =  "insert into employee (empFirstName, empLastName,empEmail,empPassword,empBeltLevel) values (@efn, @eln,@eeml,@epswd,@ebtlvl);";
            //MySqlCommand cmd = new MySqlCommand(InsertSql,conn);

            MySqlCommand cmd = new MySqlCommand(InsertSql, conn);

            cmd.Parameters.AddWithValue("@efn",tmpEmployee.FirstName);
            cmd.Parameters.AddWithValue("@eln", tmpEmployee.LastName);
            cmd.Parameters.AddWithValue("@eeml",tmpEmployee.Email);
            cmd.Parameters.AddWithValue("@epswd",tmpEmployee.Password);
            cmd.Parameters.AddWithValue("@ebtlvl",tmpEmployee.BeltLevel);



        
            conn.Open();
            bool fail = false;
            try
            {
             
                cmd.ExecuteNonQuery();
                

            }
            catch (Exception e)
            {
                Response.Write($"<Script>alert('Failed');</script>");

                Response.Write($"<Script>alert('{e.ToString()}');</script>");
                fail = true;
            }

            if (fail == false)
            {
                Response.Write($"<Script>alert('You are all set');</script>");
            }

            conn.Close();


        }
    }
}