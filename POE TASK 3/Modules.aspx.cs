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
    public partial class Modules : System.Web.UI.Page
    {
        Library lib = new Library();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //ASSIGNING THE VALUES FROM THE TEXTBOXES TO THE VARIABLES FROM THE LIBRARY CLASS
            lib.Classhour = Convert.ToInt32(txtClassHour.Text);
            lib.ModuleCredits = Convert.ToInt32(txtModCredit.Text);
            lib.Numweeks = Convert.ToInt32(txtNumWeeks.Text);
            lib.HoursSpent = Convert.ToInt32(txtHoursSpent.Text);

            //EXECUTING THE METHODS FOR CALCULATIONS FROM THE LIBRAY CLASS
            lib.self_study();
            lib.Remaining_Time();

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SIBNPOK;Initial Catalog=REGISTRATION;Integrated Security=True");
  
            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO Modules(ModuleCode,ModuleName,ModuleCredit,Classhour,Numweeks,HoursSpent,Date,SelfStudy,Remaining,UserID) VALUES " +
                "('" + txtModCode.Text + "','" + txtModName.Text + "','" + lib.ModuleCredits + "','" + lib.Classhour + "','" + lib.Numweeks + "','" + lib.HoursSpent + "','" + txtStrtDate.Text + "','" + lib.SelfStudy + "','" + lib.Remaining + "','" + lib.s() + "')", con) ;

            con.Open();

            sqlCommand.ExecuteNonQuery();

            con.Close();

            //CLEARING THE TEXBOXES AFTER THE USER IS SUCCESSFULLY ENTERS THE VALUES
            txtModCode.Text = "";
            txtModName.Text = "";
            txtModCredit.Text = "";
            txtClassHour.Text = "";
            txtNumWeeks.Text = "";
            txtHoursSpent.Text = "";
            txtStrtDate.Text = "";

        }

        protected void btnGraph_Click(object sender, EventArgs e)
        {
            //DIRECTING THE PAGE TO ANOTHER WHEN THE BUTTIN IS CLICKED
            Response.Redirect("~/Graph.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            //DIRECTING THE PAGE TO ANOTHER WHEN THE BUTTIN IS CLICKED
            Response.Redirect("~/LogIn.aspx");
        }

        protected void btnShowModules_Click(object sender, EventArgs e)
        {
            //DIRECTING THE PAGE TO ANOTHER WHEN THE BUTTIN IS CLICKED
            Response.Redirect("~/DisplayModules.aspx");
        }
    }
}