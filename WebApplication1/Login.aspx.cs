using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
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
                    cmd = new SqlCommand("select NumeUtilizator from Userss", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr[0].ToString());
                    }
                }
                catch (Exception ex)
                {
                    Label4.Text = "Nu se poate realiza conexiunea " + ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("select Parola, Tip from Userss where NumeUtilizator='" + DropDownList1.Text +
               "'", con);
                dr = cmd.ExecuteReader();
                if (!dr.Read())
                {
                    Label4.Text = "Datele sunt gresite!";
                }
                else
                {
                    if (dr[1].ToString().Trim() == "client")
                    {
                        string url;
                        if (dr[0].ToString().Trim() == TextBox1.Text.Trim())
                        {
                            Application["numeUser"] = DropDownList1.Text;
                            url = "WebForm2.aspx";
                            Response.Redirect(url);
                        }
                        else
                        {
                            Label4.Text = "Parola gresita!";
                        }
                    }
                    else if(dr[1].ToString().Trim() == "admin")
                    {
                        string url;
                        if (dr[0].ToString().Trim() == TextBox1.Text.Trim())
                        {
                            Application["numeUser"] = DropDownList1.Text;
                            url = "WebForm4.aspx";
                            Response.Redirect(url);
                        }
                        else
                        {
                            Label4.Text = "Parola gresita!";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Label4.Text = "Nu se poate realiza conexiunea " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}