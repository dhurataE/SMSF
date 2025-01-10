using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class S_C : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegjistroCookies_Click(object sender, EventArgs e)
        {

            Response.Cookies["Emri"].Value = "Dhurate";
            Response.Cookies["Emri"].Expires = DateTime.Now.AddDays(10);
            if (Response.Cookies["Emri"].Value != null)
            {
                lblCookies.Text = Response.Cookies["Emri"].Value;
            }
            else
            {
                lblCookies.Text = "Nuk ka vlere ne variablen Emri!!";
            }

            HttpCookie objCookies = new HttpCookie("Mbiemri");
            objCookies.Value = "Hyseni";
            objCookies.Expires = DateTime.Now.AddDays(10);
        }

        protected void btnFshiCookies_Click(object sender, EventArgs e)
        {
            Response.Cookies["Emri"].Expires = DateTime.Now.AddDays(-1);
            
            if (Response.Cookies["Emri"].Expires< DateTime.Now)
            {
                lblCookies.Text = "Vlera e Cookies eshte fshi me suksese!!";
            }
        }

        protected void btnRegjistroSessionet_Click(object sender, EventArgs e)
        {
            Session["Emri"] = "Dhurata";

            if (Session["Emri"] != null)
            {
                lblSession.Text = Session["Emri"].ToString();
            }
           // Response.Redirect("Pacienti.aspx");
        }

        protected void btnFshiSessionet_Click(object sender, EventArgs e)
        {
            if (Session["Emri"] != null)
            {
                Session.Remove("Session['Emri']");
                lblSession.Text = "Vlera e sesionit eshte fshi me sukses!!";
                Session.RemoveAll();
                Session.Abandon();
                Session.Clear();
            }
        }
    }
}