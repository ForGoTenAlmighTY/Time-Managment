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
    public partial class Reminder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnModules_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Modules.aspx");
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}