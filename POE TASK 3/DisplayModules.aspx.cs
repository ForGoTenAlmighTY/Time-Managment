using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POE_TASK_3
{
    public partial class DisplayModules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnModules_Click(object sender, EventArgs e)
        {
            //DIRECTING THE PAGE TO ANOTHER WHEN THE BUTTIN IS CLICKED
            Response.Redirect("~/Modules.aspx");
        }

        protected void btnGraph_Click(object sender, EventArgs e)
        {
            //DIRECTING THE PAGE TO ANOTHER WHEN THE BUTTIN IS CLICKED
            Response.Redirect("~/Graph.aspx");
        }
    }
}