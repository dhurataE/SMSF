using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SMS.Klasat;
using System.Configuration;

namespace SMS
{
    public partial class Pacienti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Calendar1.Visible = true;
                kerko();
            }

        }

        public void kerko()
        {
            csObjekti obj = new csObjekti();
            DataSet ds = obj.RunQuery("select * from fnPacienti()", "tblPacienti");
            GridView1.DataSource = ds;
            GridView1.DataBind();

            //if (txtKerko.Text == "")
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
            //            "alert('Sheno ID e punetorit ne tekstboksin ID Punetori!!');", true);
            //}
            //else
            //{ }
            }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            txtDataLindjes.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Image1_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void btnRuaj_Click(object sender, EventArgs e)
        {
            csPacienti.RuajPacientin(0,txtEmri.Text, 
                txtMbiemri.Text,
                txtDataLindjes.Text,
                txtNumriKontaktues.Text,
                txtHistoria_P.Text);
            kerko();
            fshi();

        }

        protected void btnEdito_Click(object sender, EventArgs e)
        {
            csPacienti.ModifikoPacientin(int.Parse(txtKerko.Text), txtEmri.Text, txtMbiemri.Text, txtDataLindjes.Text, txtNumriKontaktues.Text, txtHistoria_P.Text);
            txtKerko.Text = txtEmri.Text;
            btnKerko_Click(sender, e);
            fshi();
        }
        void fshi()
        {
            txtEmri.Text = "";
            txtMbiemri.Text = "";
            //txtKerko.Text = "";
            txtDataLindjes.Text = "";
            txtHistoria_P.Text = "";
            txtNumriKontaktues.Text = "";
            lblNjoftim.Text = "";
         
        }
        protected void btnFshi_Click(object sender, EventArgs e)
        {
            csPacienti.FshiPacientin(int.Parse(txtKerko.Text));
            txtKerko.Text = txtEmri.Text;
            btnKerko_Click(sender, e);
            fshi();
        }

        protected void btnKerko_Click(object sender, EventArgs e)
        {
            csObjekti obj = new csObjekti();
            DataSet ds = obj.RunQuery("select * from [fnPacientiKerko]('"+ txtKerko.Text+"')", "tblPacienti");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btnPastro_Click(object sender, EventArgs e)
        {
            fshi();
        }
    }
}