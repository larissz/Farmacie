using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using iText.IO.Image;
using iText.Kernel.Colors;
using iText.Kernel.Pdf;
using iText.Kernel.Pdf.Action;
using iText.Kernel.Pdf.Canvas.Draw;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Image = iText.Layout.Element.Image;
using System.Net;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server = localhost; Database=Farmacie;Trusted_Connection=True");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void ButonVitaminaK_Click(object sender, EventArgs e)
        {
            if (LabelVitaminaK.Text != "Numar Produse")
                if (Convert.ToInt32(LabelVitaminaK.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set VitaminaK = VitaminaK - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select VitaminaK from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelVitaminaK.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonVitaminaK2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaK = VitaminaK + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaK from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaK.Text = dr[0].ToString();
            }
            con.Close();
        }
        protected void ButonVitaminaB_Click(object sender, EventArgs e)
        {
            if (LabelVitaminaB.Text != "Numar Produse")
                if (Convert.ToInt32(LabelVitaminaB.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set VitaminaB = VitaminaB - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select VitaminaB from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelVitaminaB.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        
        protected void ButonVitaminaB2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaB = VitaminaB + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaB from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaB.Text = dr[0].ToString();
            }
            con.Close();

        }
        protected void ButonVitaminaAD_Click(object sender, EventArgs e)
        {
            if (LabelVitaminaAD.Text != "Numar Produse")
                if (Convert.ToInt32(LabelVitaminaAD.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set VitaminaAsiD = VitaminaAsiD - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select VitaminaAsiD from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelVitaminaAD.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonVitaminaAD2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaAsiD = VitaminaAsiD + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaAsiD from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaAD.Text = dr[0].ToString();
            }
            con.Close();

        }
           
        protected void ButonSirop_Click(object sender, EventArgs e)
        {
            if (LabelSiropTuse.Text != "Numar Produse")
                if (Convert.ToInt32(LabelSiropTuse.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set SiropTuse = SiropTuse - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select SiropTuse from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelSiropTuse.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonSirop2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set SiropTuse = SiropTuse + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select SiropTuse from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelSiropTuse.Text = dr[0].ToString();
            }
            con.Close();

        }
        
        protected void ButonApaTermala_Click(object sender, EventArgs e)
        {
            if (LabelApaTermala.Text != "Numar Produse")
                if (Convert.ToInt32(LabelApaTermala.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set ApaTermala = ApaTermala - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select ApaTermala from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelApaTermala.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonApaTermala2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set ApaTermala = ApaTermala + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select ApaTermala from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelApaTermala.Text = dr[0].ToString();
            }
            con.Close();

        }

        protected void ButonBalsam_Click(object sender, EventArgs e)
        {
            if (LabelBalsam.Text != "Numar Produse")
                if (Convert.ToInt32(LabelBalsam.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set Balsam = Balsam - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select Balsam from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelBalsam.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonBalsam2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Balsam = Balsam + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Balsam from Stock", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelBalsam.Text = dr[0].ToString();
            }
            con.Close();

        }

        protected void ButonParacetamol_Click(object sender, EventArgs e)
        {
            if (LabelParacetamol.Text != "Numar Produse")
                if (Convert.ToInt32(LabelParacetamol.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set Paracetamol = Paracetamol - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select Paracetamol from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelParacetamol.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonParacetamol2_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Paracetamol = Paracetamol + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Paracetamol from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelParacetamol.Text = dr[0].ToString();
            }
            con.Close();

        }

        protected void ButonOmega3_Click(object sender, EventArgs e)
        {
            if (LabelOmega3.Text != "Numar Produse")
                if (Convert.ToInt32(LabelOmega3.Text) > 0)
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Stock set Omega = Omega - 1 where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select Omega from Stock where Nr=99999", con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LabelOmega3.Text = dr[0].ToString();
                    }
                    con.Close();
                }
        }
        protected void ButonOmega32_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd = new SqlCommand("UPDATE Stock set Omega = Omega + 1 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select Omega from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelOmega3.Text = dr[0].ToString();
            }
            con.Close();

        }

        protected void PdfButton_Click(object sender, EventArgs e)
        {
            PdfWriter writer = new PdfWriter("D:\\Exemplu.pdf");
            PdfDocument pdf = new PdfDocument(writer);
            Document document = new Document(pdf);
            Paragraph header = new Paragraph("Farmacia MedFarm")
            .SetTextAlignment(TextAlignment.CENTER)
            .SetFontSize(20);
            document.Add(header);
            Paragraph subheader = new Paragraph("Health Above All")
            .SetTextAlignment(TextAlignment.CENTER)
            .SetFontSize(15);
            document.Add(subheader);

            // Linie separatoare
            LineSeparator ls = new LineSeparator(new SolidLine());
            document.Add(ls);
            // Linie noua
            Paragraph paragraph0 = new Paragraph("Comanda nr. 199834002");
            document.Add(paragraph0);
            // Linie noua
            Paragraph newline = new Paragraph(new Text("\n"));
            document.Add(newline);
            // Adaugare text
            Paragraph paragraph1 = new Paragraph(" Numele: " + TextBox1.Text);
            document.Add(paragraph1);
            // Linie noua
            document.Add(newline);
            // Adagare text
            Paragraph paragraph11 = new Paragraph("Prenumele: " + TextBox2.Text);
            document.Add(paragraph11);
            // Linie noua
            document.Add(newline);
            // Linie noua
            document.Add(newline);
            // Tabel
            iText.Layout.Element.Table table = new iText.Layout.Element.Table(2, false);
            Cell cell11 = new Cell(1, 1)
            .SetBackgroundColor(ColorConstants.GRAY)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Nume produs"));
            Cell cell12 = new Cell(1, 1)
            .SetBackgroundColor(ColorConstants.GRAY)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Cantitate"));

            Cell cell21 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Vitamina B"));
            Cell cell22 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelVitaminaB.Text));

            Cell cell31 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Vitamina K"));
            Cell cell32 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelVitaminaK.Text));

            Cell cell41 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Apa termala Avene"));
            Cell cell42 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelApaTermala.Text));

            Cell cell51 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Vitamina A si D"));
            Cell cell52 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelVitaminaAD.Text));

            Cell cell61 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Sirop de tuse"));
            Cell cell62 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelSiropTuse.Text));

            Cell cell71 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Balsam dupa ras"));
            Cell cell72 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelBalsam.Text));

            Cell cell81 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Paracetamol"));
            Cell cell82 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelParacetamol.Text));

            Cell cell91 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph("Omega 3"));
            Cell cell92 = new Cell(1, 1)
            .SetTextAlignment(TextAlignment.CENTER)
            .Add(new Paragraph(LabelOmega3.Text));

            table.AddCell(cell11);
            table.AddCell(cell12);
            table.AddCell(cell21);
            table.AddCell(cell22);
            table.AddCell(cell31);
            table.AddCell(cell32);
            table.AddCell(cell41);
            table.AddCell(cell42);
            table.AddCell(cell51);
            table.AddCell(cell52);
            table.AddCell(cell61);
            table.AddCell(cell62);
            table.AddCell(cell71);
            table.AddCell(cell72);
            table.AddCell(cell81);
            table.AddCell(cell82);
            table.AddCell(cell91);
            table.AddCell(cell92);

            document.Add(table);
            // Hyperlink
            Link link = new Link("Click aici",
            PdfAction.CreateURI("https://www.google.com"));
            Paragraph hyperLink = new Paragraph("Va rog ")
            .Add(link.SetBold().SetUnderline()
            .SetItalic().SetFontColor(ColorConstants.BLUE))
            .Add(" pentru a accesa www.google.com.");
            document.Add(newline);
            document.Add(hyperLink);
            // Numere de pagina
            int n = pdf.GetNumberOfPages();
            for (int i = 1; i <= n; i++)
            {
                document.ShowTextAligned(new Paragraph(String
                .Format("Pagina" + i + " din " + n)),
                559, 806, i, TextAlignment.RIGHT,
               VerticalAlignment.TOP, 0);
            }
            document.Close();


            //trimitere mail
            var fromAddress = new MailAddress("medfarm97@gmail.com", "MedFarm");
            var toAddress = new MailAddress("h.f@gmail.com", "F");
            const string fromPassword = "*******";
            const string subject = "MedFarm - confirmare comanda";
            const string body = "Comanda dumneavoastra a fost inregistrata!";
            Attachment data = new Attachment("D:\\Exemplu.pdf");
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
                
            })
            {
                message.Attachments.Add(data);
                smtp.Send(message);
            }

            Resetare();
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Resetare();
        }

        void Resetare()
        {
            con.Open();
            cmd = new SqlCommand("UPDATE Stock set VitaminaB = 0, VitaminaAsiD = 0, VitaminaK = 0, SiropTuse = 0, ApaTermala = 0, Balsam = 0, Paracetamol = 0, Omega = 0 where Nr=99999", con);
            dr = cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select VitaminaB, VitaminaAsiD, VitaminaK, SiropTuse, ApaTermala, Balsam, Paracetamol, Omega from Stock where Nr=99999", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                LabelVitaminaB.Text = dr[0].ToString();
                LabelVitaminaAD.Text = dr[1].ToString();
                LabelVitaminaK.Text = dr[2].ToString();
                LabelSiropTuse.Text = dr[3].ToString();
                LabelApaTermala.Text = dr[4].ToString();
                LabelBalsam.Text = dr[5].ToString();
                LabelParacetamol.Text = dr[6].ToString();
                LabelOmega3.Text = dr[7].ToString();
            }
        }

        /*
        protected void RezervaProdus_Click(object sender, EventArgs e)
        {
            Button0.Text = "Rezervat";
        }

        protected void RezervaProdus1_Click(object sender, EventArgs e)
        {
            Button1.Text = "Rezervat";
        }

        protected void RezervaProdus2_Click(object sender, EventArgs e)
        {
            Button2.Text = "Rezervat";
        }

        protected void RezervaProdus3_Click(object sender, EventArgs e)
        {
            Button3.Text = "Rezervat";
        }

        protected void RezervaProdus4_Click(object sender, EventArgs e)
        {
            Button4.Text = "Rezervat";
        }

        protected void RezervaProdus5_Click(object sender, EventArgs e)
        {
            Button5.Text = "Rezervat";
        }

        protected void RezervaProdus6_Click(object sender, EventArgs e)
        {
            Button6.Text = "Rezervat";
        }

        protected void RezervaProdus7_Click(object sender, EventArgs e)
        {
            Button7.Text = "Rezervat";
        }*/
    }
}