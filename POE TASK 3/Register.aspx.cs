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
    public partial class Register : System.Web.UI.Page
    {

        Library lib = new Library();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SIBNPOK;Initial Catalog=REGISTRATION;Integrated Security=True");

            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO USERS VALUES ('" + txtUserName.Text + "','" + txtPassword.Text + "')", con);
            con.Open();

            

            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            SqlDataReader reader = dataReader;



            con.Close();
            Response.Redirect("~/LogIn.aspx");
        }
    }
}