using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SMS.Klasat;
using System.Data;
using System.Data.SqlClient;

namespace SMS
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


                if (Request.Cookies["UName"] != null && Request.Cookies["PWD"] != null)
                {
                    txtPerdoruesi.Text = Request.Cookies["UName"].Value;
                    txtFjalekalimi.Text = Request.Cookies["PWD"].Value;
                }
                else
                {
                    txtPerdoruesi.Text = string.Empty;
                    txtFjalekalimi.Text = string.Empty;
                }
                
            }

        }
        protected void Mesashi(string alert)
        {
            string script = @"alert('" + alert + "')";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "jsCall", script, true);
        }
        private bool Valido()
        {
            bool blnValido = true;
            if (txtPerdoruesi.Text==string.Empty && txtFjalekalimi.Text==string.Empty)
            {
                Mesashi("Ju lutem plotesoni te dhenat!!");
                txtPerdoruesi.Focus();
                blnValido = false;
            }
            return blnValido;
        }
        private bool Perdoruesi()
        {
            bool blnPeroruesiValid = false;
            csObjekti db = new csObjekti();
            DataSet ds = new DataSet();
            ds = db.RunQuery("exec prPerdoruesi @Perdoruesi='" + txtPerdoruesi.Text + "', @Fjalekalimi='" + txtFjalekalimi.Text + "'", "tblPuntori");

            if (ds.Tables[0].Rows.Count>0)
            {
                Session.Add("ID", ds.Tables[0].DefaultView[0]["ID"].ToString());
                Session.Add("Perdoruesi", ds.Tables[0].DefaultView[0]["Perdoruesi"].ToString());
                blnPeroruesiValid = true;

            }
            else
            {
                Mesashi("Gabim Perdoruesi/Fjalekalimi!!");
                txtPerdoruesi.Focus();

            }
            return blnPeroruesiValid;
        
        }

        protected void btnQasu_Click(object sender, EventArgs e)
        {
            if (Valido()==true)
            {
                if (Perdoruesi()==true)
                {
                    if (ChkRikujto.Checked==true)
                    {
                        Response.Cookies["UName"].Value = txtPerdoruesi.Text;
                        Response.Cookies["PWD"].Value = txtFjalekalimi.Text;
                        Response.Cookies["UName"].Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddMonths(1);
                    }
                    else
                    {
                        Response.Cookies["UName"].Expires = DateTime.Now.AddMonths(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddMonths(-1);

                    }
                    Response.Redirect("~/Default.aspx");
                }
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Punetori.aspx");
        }
    }
}