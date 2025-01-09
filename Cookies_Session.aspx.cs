using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class Cookies_Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnCoocieAdd_Click(object sender, EventArgs e)
        {
            // Këtu, vlerat e koleksionit të Cookies() vendosen drejtpërdrejt
            Response.Cookies["userName"].Value = "dhurata";
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(1);

            // Këtu, kodi krijon një shembull të një objekti të tipit HttpCookie
            HttpCookie aCookie = new HttpCookie("lastVisit");
            aCookie.Value = DateTime.Now.ToString();
            aCookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(aCookie);

            if (Request.Cookies["userName"] != null)
                Label1.Text = Request.Cookies["userName"].Value;
            //fshirja 
            aCookie.Expires = DateTime.Now.AddDays(-1);

        }

        protected void btnCoociesDelete_Click(object sender, EventArgs e)
        {
            //fshirja 
            Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1);
            if (Request.Cookies["userName"].Expires < DateTime.Now)
                Label1.Text = "Eshte fshire me suksese";
        }

        protected void btnAddSessnion_Click(object sender, EventArgs e)
        {
            
            if (Session["s_Emri"]==null)
            {
                Session["s_Emri"] = "Dhurata";
                lblSession.Text = Session["s_Emri"].ToString();
            }
        }

        protected void btnDeleteSession_Click(object sender, EventArgs e)
        {
            if (Session["s_Emri"] != null)
            {
                Session.Remove("Session['s_Emri']");
                lblSession.Text = "Eshte fshire me suksese";
                Session.RemoveAll();
                Session.Abandon();
                Session.Clear();
            }
        }
    }
}