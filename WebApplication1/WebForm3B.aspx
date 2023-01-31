<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3B.aspx.cs" Inherits="WebApplication1.WebForm3B" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Products</title>
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

        <link href="css/templatemo-medic-care.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <nav class="navbar navbar-expand-lg bg-light fixed-top shadow-lg">
                <div class="container">
                    <a class="navbar-brand mx-auto d-lg-none" href="index.html">
                        MedFarm
                        <strong class="d-block">Health Above All</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href='/WebForm1.aspx'>Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href='/WebForm1.aspx'>About</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href='/WebForm1.aspx'>Timeline</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href='/WebForm1.aspx'>
                                MedFarm
                                <strong class="d-block">Health Above All</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href='/WebForm2.aspx'>Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href='/WebForm3B.aspx'>Locations</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contact</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </nav> 
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                     OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CellPadding="10" HeaderStyle-BorderColor="#000000"
                     HeaderStyle-BorderWidth="2" HeaderStyle-ForeColor="#3184ff" RowStyle-BorderWidth="2" >
    <Columns>
        <asp:BoundField ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px" DataField="Id" HeaderText="ID" />
        <asp:BoundField ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150px" DataField="Oras" HeaderText="Oras" />
        <asp:BoundField ItemStyle-Width="60%" DataField="Adresa" HeaderText="Adresa" />
    </Columns>
        <selectedrowstyle backcolor="#000000"
         forecolor="#3184ff"
         font-bold="true"/>
</asp:GridView>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="col mb-5">
                    
                    </div>
                    </div>
                    </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <asp:Button Width="49%" ID="ButonCautare" runat="server" Text="Cautare" OnClick="ButonCautare_Click" Visible="false" />
                        <asp:TextBox Width="49%" ID="TextBoxCautare" Columns="10" MaxLength="20" Text="" runat="server" Visible="false"/>
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <asp:Button Width="100%" ID="ButonAdauga" runat="server" Text="Adaugare" OnClick="ButonAdauga_Click" Visible="false"/>
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <asp:Button Width="100%" ID="ButonEditeaza" runat="server" Text="Editare" OnClick="ButonEditeaza_Click" Visible="false" />
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <asp:Button Width="100%"  ID="ButonSterge" runat="server" Text="Stergere" OnClick="ButonSterge_Click" Visible="false"/>
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <asp:Button Width="39%" ID="ButonAnulare" runat="server" Text="Anulare" Visible="false" OnClick="ButonAnulare_Click" />
                        <asp:Button Width="59%" ID="ButonEditeazaSalvare" runat="server" Text="Salvare Editare" Visible="false" OnClick="ButonEditeazaSalvare_Click" />
                        <asp:Button Width="59%" ID="ButonAdaugaSalvare" runat="server" Text="Salvare Adaugare" Visible="false" OnClick="ButonAdaugaSalvare_Click" />
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                      <asp:Label ID="ID_EDIT" runat="server" Text="ID:" Visible="false" />
                      <asp:TextBox ID="IDTextBox" runat="server" Visible="false" />
                </div>  
                
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                      <asp:Label ID="ORAS_EDIT" runat="server" Text="Oras:" Visible="false" /> 
                      <asp:TextBox ID="ORASTextBox" runat="server" Visible="false" />  
                </div>

                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                      <asp:Label ID="ADRESA_EDIT" runat="server" Text="Adresa:" Visible="false" />
                      <asp:TextBox ID="ADRESATextBox" runat="server" Visible="false" />
                </div>

            </div>
                   
                          
                        
                                              
                        
        </section>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        </div>

         <footer class="site-footer section-padding" id="contact">
            <div class="container">
                <div class="row">

                    <div class="col-lg-5 me-auto col-12">
                        <h5 class="mb-lg-4 mb-3">Opening Hours</h5>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex">
                                Sunday : Closed
                            </li>

                            <li class="list-group-item d-flex">
                                Monday - Friday
                                <span>8:00 AM - 20:00 PM</span>
                            </li>

                            <li class="list-group-item d-flex">
                                Saturday
                                <span>8:00 AM - 13:00 PM</span>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 col-12 my-4 my-lg-0">
                        <h5 class="mb-lg-4 mb-3">Corporate Info</h5>

                        <p><a href="mailto:hello@company.co">hello@company.co</a><p>

                        <p>Str. Progresului, nr. 151-153, Bucuresti, Romania</p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 ms-auto">
                        <h5 class="mb-lg-4 mb-3">Socials</h5>

                        <ul class="social-icon">
                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="#" class="social-icon-link bi-twitter"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-12 ms-auto mt-4 mt-lg-0">
                        <p class="copyright-text">Copyright © MedFarm 2011</p>
                    </div>

                </div>
            </section>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/scrollspy.min.js"></script>
        <script src="js/custom.js"></script>
    </form>
</body>
</html>
