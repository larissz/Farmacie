using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server = localhost; Database=Farmacie;Trusted_Connection=True");
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt;
        SqlDataAdapter adapt;
        DataSet ds;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * from Locationsss", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void ShowData()
        {
            con.Open();
            adapt = new SqlDataAdapter("Select * from Locationsss", con);
            adapt.Fill(dt);
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void ButonCautare_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * from Locationsss where ORAS like " + "'" + TextBoxCautare.Text + "%'", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void ButonSterge_Click(object sender, EventArgs e)
        {
            ButonSterge.Attributes["onclick"] = "if(!confirm('Do you want to delete registration with id " + IDTextBox.Text + "?')){return false;};";
            da = new SqlDataAdapter("Delete from Locationsss where ID ='" + IDTextBox.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            da = new SqlDataAdapter("SELECT * from Locationsss", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if(row.RowType == DataControlRowType.DataRow)
                {
                    row.Attributes["onmouseover"] = "this.style.cursor='hand';this.style.textDecoration='underline';";
                    row.Attributes["onmouseout"] = "this.style.textDecoration='none';";
                    row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + row.DataItemIndex, true);
                    row.Style.Add(HtmlTextWriterStyle.Cursor, "pointer");
                }
            }
            base.Render(writer);
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            IDTextBox.Text = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
            ORASTextBox.Text = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
            ADRESATextBox.Text = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
        }

        protected void ButonEditeaza_Click(object sender, EventArgs e)
        {
            ButonAnulare.Visible = true;
            ButonEditeazaSalvare.Visible = true;
            ButonAdaugaSalvare.Visible = false;
            ID_EDIT.Visible = true;
            IDTextBox.Visible = true;
            ORAS_EDIT.Visible = true;
            ORASTextBox.Visible = true;
            ADRESA_EDIT.Visible = true;
            ADRESATextBox.Visible = true;
        }

        protected void ButonAdauga_Click(object sender, EventArgs e)
        {
            IDTextBox.Text = "";
            ORASTextBox.Text = "";
            ADRESATextBox.Text = "";

            ButonAnulare.Visible = true;
            ButonEditeazaSalvare.Visible = false;
            ButonAdaugaSalvare.Visible = true;
            ID_EDIT.Visible = true;
            IDTextBox.Visible = true;
            ORAS_EDIT.Visible = true;
            ORASTextBox.Visible = true;
            ADRESA_EDIT.Visible = true;
            ADRESATextBox.Visible = true;
        }

        protected void ButonEditeazaSalvare_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("Update Locationsss SET Oras='" + ORASTextBox.Text + "', Adresa='" + ADRESATextBox.Text + "' where Id ='" + IDTextBox.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            da = new SqlDataAdapter("SELECT * from Locationsss", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            ButonAnulare.Visible = false;
            ButonAdaugaSalvare.Visible = false;
            ButonEditeazaSalvare.Visible = false;
            ID_EDIT.Visible = false;
            IDTextBox.Visible = false;
            ORAS_EDIT.Visible = false;
            ORASTextBox.Visible = false;
            ADRESA_EDIT.Visible = false;
            ADRESATextBox.Visible = false;
        }

        protected void ButonAdaugaSalvare_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("Insert into Locationsss Values('" + IDTextBox.Text + "','" + ORASTextBox.Text + "','" + ADRESATextBox.Text + "')", con);
            ds = new DataSet();
            da.Fill(ds);
            da = new SqlDataAdapter("SELECT * from Locationsss", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            ButonAnulare.Visible = false;
            ButonAdaugaSalvare.Visible = false;
            ButonEditeazaSalvare.Visible = false;
            ID_EDIT.Visible = false;
            IDTextBox.Visible = false;
            ORAS_EDIT.Visible = false;
            ORASTextBox.Visible = false;
            ADRESA_EDIT.Visible = false;
            ADRESATextBox.Visible = false;
        }

        protected void ButonAnulare_Click(object sender, EventArgs e)
        {
            IDTextBox.Text = "";
            ORASTextBox.Text = "";
            ADRESATextBox.Text = "";

            ButonAnulare.Visible = false;
            ButonEditeazaSalvare.Visible = false;
            ButonAdaugaSalvare.Visible = false;
            ID_EDIT.Visible = false;
            IDTextBox.Visible = false;
            ORAS_EDIT.Visible = false;
            ORASTextBox.Visible = false;
            ADRESA_EDIT.Visible = false;
            ADRESATextBox.Visible = false;
        }
    }
}