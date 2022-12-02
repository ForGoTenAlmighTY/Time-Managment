using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomClassLibrary;

namespace POE_TASK_3
{
    public partial class LogIn : System.Web.UI.Page
    {
        Library lib = new Library();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            //CONNECTION TO THE DATABASE
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SIBNPOK;Initial Catalog=REGISTRATION;Integrated Security=True");
            string query = "SELECT * FROM USERS WHERE UserName='"+txtUserName.Text+"'";
            con.Open();

            //EXECUTES THE QUERY DECLARED
            SqlCommand sqlCommand = new SqlCommand(query, con);

            SqlDataReader dataReader = sqlCommand.ExecuteReader();

            bool check = false;

            //ASSIGNS A SESSION NUMBER TO THE USER WHO HAS LOGIN OR REGISTERED
            while (dataReader.Read())
            {
                if (dataReader.GetValue(1).ToString().Equals(txtUserName.Text))
                {
                    check = true;
                    lib.setSession(Convert.ToInt32(dataReader.GetValue(0)));
                }
            }

            //CHECKS IF THE USER ENTERS THE CORRECT DETAIS TO LOGIN
            if (check == true)
            {
                Response.Redirect("~/Modules.aspx");
            }
            else
            {
                Response.Write("Enter the correct details!");
            }

            con.Close();
        }

    }
}