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
    public partial class Stafi : System.Web.UI.Page
    {
        string qyr;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable table = new DataTable();
        DataTable table1 = new DataTable();
        string connection = ConfigurationManager.ConnectionStrings["ConnectionStringB"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            txtStafi.Text = GjeneroIDStafit().ToString();
           // txtKerko.Text = "";
            btnKerko_Click(sender, e);
        }
        private int GjeneroIDStafit()
        {
            qyr = "select isnull(MAX(ID_S),0)+1 as ID from dbo.tblStafi";
            sda = new SqlDataAdapter(qyr, connection);
            SqlCommandBuilder cmddb = new SqlCommandBuilder(sda);
            sda.Fill(table1);
            return Convert.ToInt32(table1.Rows[0]["ID"]);

        }

        public void pastro()
        {
            txtStafi.Text = "";
            txtEmri.Text = "";
            txtMbiemri.Text = "";
            txtNrKontaktues.Text = "";
            ddlPozita.SelectedItem.Text = "";

        }

        protected void btnRuaj_Click(object sender, EventArgs e)
        {
            qyr = "insert into tblStafi values(" + int.Parse(txtStafi.Text) + ",'" + txtEmri.Text + "','" + txtMbiemri.Text + "','" + txtSpecializimi.Text + "','" + txtNrKontaktues.Text + "'," + double.Parse(txtPaga.Text) + "," + int.Parse(ddlPozita.SelectedValue) + ");";
            qyr += "insert into tblPerdoruesi values(" + int.Parse(txtStafi.Text) + ",'" + txtPerdoruesi.Text + "','" + txtFjalekalimi.Text + "'," + int.Parse(ddlRoli.SelectedValue) + ");";
            con = new SqlConnection(connection);
            cmd = new SqlCommand(qyr, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                txtKerko.Text = txtEmri.Text;
                lblRez.Text = "Te dhenat e stafit jane ruajtur me sukses!!";
                pastro();

            }
            catch (Exception)
            {
                lblRez.Text = "Gjate ekzekutimit te ketij transaksioni jane paraqitur probleme!!";
            }

        }

        protected void btnEdito_Click(object sender, EventArgs e)
        {
            if (txtKerko.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                        "alert('Sheno ID e stafit ne tekstboksin Kerko!!');", true);
            }
            else
            {
                qyr = "update  dbo.tblStafi    set    Emri = '" + txtEmri.Text + "',   Mbiemri ='" +
                    txtMbiemri.Text + "',  Specializimi = '" + txtSpecializimi.Text + "',  Paga = " + txtPaga.Text + " where ID_S=" + txtKerko.Text;

                con = new SqlConnection(connection);
                cmd = new SqlCommand(qyr, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblRez.Text = "Stafi u modifikua me sukses!";
                }
                catch (Exception)
                {


                    lblRez.Text = "Gjate ekzekutimit te ketij transaksioni jane paraqitur probleme!!";
                }

                con.Close();
                txtKerko.Text = txtEmri.Text;
                btnKerko_Click(sender, e);
                txtEmri.Text = "";
                txtMbiemri.Text = "";
                txtStafi.Text = "";

                txtFjalekalimi.Text = "";
                txtPerdoruesi.Text = "";
                txtPaga.Text = "";
            }
        }

        protected void btnKerko_Click(object sender, EventArgs e)
        {
            qyr = "select * from [fnStafiKerko]('" + txtKerko.Text + "%" + "')";
            try
            {
                sda = new SqlDataAdapter(qyr, connection);
                SqlCommandBuilder cmdb = new SqlCommandBuilder(sda);
                sda.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();

            }
            catch (Exception)
            {
                lblRez.Text = "Gjate ekzekutimit te ketij transaksioni jane paraqitur probleme!!";
            }
        }

        protected void btnFshi_Click(object sender, EventArgs e)
        {
            if (txtKerko.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                        "alert('Sheno ID e stafit ne tekstboksin Kerko!!');", true);
            }
            else
            {
                qyr = " delete from dbo.tblStafi   where ID_S = " + txtKerko.Text;
                con = new SqlConnection(connection);
                cmd = new SqlCommand(qyr, con);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblRez.Text = "Stafi u fshi me sukses!";
                }
                catch (Exception)
                {

                    lblRez.Text = "Gjate ekzekutimit te ketij transaksioni jane paraqitur probleme!!";
                }

                con.Close();
            }
        }
    }
    }