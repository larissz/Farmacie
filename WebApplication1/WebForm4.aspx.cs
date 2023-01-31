using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server = localhost; Database=Farmacie;Trusted_Connection=True");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    con.Open();
                    cmd = new SqlCommand("select Id from Locationsss", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        IDLocatie.Items.Add(dr[0].ToString());
                    }
                }
                catch (Exception ex)
                {
                    IDLocatie.Items.Add( "Nu se poate realiza conexiunea " + ex.Message);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void ButonVitaminaK_Click(object sender, EventArgs e)
        {
            

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaK = VitaminaK - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaK from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaK.Text = dr[0].ToString();
            }
            con.Close();

        }
        protected void ButonVitaminaK2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaK = VitaminaK + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaK from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaK.Text = dr[0].ToString();
            }
            con.Close();
        }
        
            protected void ButonVitaminaKCheck_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select VitaminaK from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaK.Text = dr[0].ToString();
            }
            con.Close();
        }

        protected void ButonVitaminaB_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaB = VitaminaB - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaB from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaB.Text = dr[0].ToString();
            }
            con.Close();
        }
        
            protected void ButonVitaminaBCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select VitaminaB from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaB.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonVitaminaB2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaB = VitaminaB + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaB from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaB.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonVitaminaAD_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaAsiD = VitaminaAsiD - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaAsiD from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaAD.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonVitaminaAD2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaAsiD = VitaminaAsiD + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaAsiD from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaAD.Text = dr[0].ToString();
            }
            con.Close();
        }
             protected void ButonVitaminaADCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select VitaminaAsiD from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaAD.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonSirop_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set SiropTuse = SiropTuse - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select SiropTuse from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelSiropTuse.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonSirop2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set SiropTuse = SiropTuse + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select SiropTuse from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelSiropTuse.Text = dr[0].ToString();
            }
            con.Close();

        }
             protected void ButonSiropTuseCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select SiropTuse from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelSiropTuse.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonApaTermala_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set ApaTermala = ApaTermala - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select ApaTermala from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelApaTermala.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonApaTermala2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set ApaTermala = ApaTermala + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select ApaTermala from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelApaTermala.Text = dr[0].ToString();
            }
            con.Close();
        }

        
            protected void ButonApaTermalaCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select ApaTermala from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelApaTermala.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonBalsam_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Balsam = Balsam - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Balsam from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelBalsam.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonBalsam2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Balsam = Balsam + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Balsam from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelBalsam.Text = dr[0].ToString();
            }
            con.Close();
        }
        
            protected void ButonBalsamCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select Balsam from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelBalsam.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonParacetamol_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Paracetamol = Paracetamol - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Paracetamol from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelParacetamol.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonParacetamol2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Paracetamol = Paracetamol + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Paracetamol from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelParacetamol.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonParacetamolCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select Paracetamol from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelParacetamol.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonOmega3_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Omega = Omega - 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Omega from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelOmega3.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonOmega32_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Omega = Omega + 1 where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Omega from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelOmega3.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonOmegaCheck_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("select Omega from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelOmega3.Text = dr[0].ToString();
            }
            con.Close();
        }

        protected void IDLocatie_SelectedIndexChanged(object sender, EventArgs e)
        {
            checkstock();
            ButonVitaminaKCheck_Click(sender, e);
            ButonVitaminaBCheck_Click(sender, e);
            ButonVitaminaADCheck_Click(sender, e);
            ButonSiropTuseCheck_Click(sender, e);
            ButonApaTermalaCheck_Click(sender, e);
            ButonBalsamCheck_Click(sender, e);
            ButonParacetamolCheck_Click(sender, e);
            ButonOmegaCheck_Click(sender, e);
        }

        void checkstock()
        {
            bool stock = false;
            con.Open();
            cmd = new SqlCommand("select Omega from Stock where Nr ='" + IDLocatie.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                stock = true;
            }
            con.Close();
            con.Open();
            if(stock == false)
            {
                cmd = new SqlCommand("insert into Stock values (0,0,0,0,0,0,0,0,'" + IDLocatie.SelectedItem.Text + "')", con);
                dr = cmd.ExecuteReader();
            }
            con.Close();
        }
    }
}