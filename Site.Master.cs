using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Perdoruesi"]!=null)
            {
                Label1.Text = "Mireserdhet " + Session["Perdoruesi"];
            }

        }
        protected void lbLogOff_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LogIn.aspx");
        }

    }
}