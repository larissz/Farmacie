<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

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
                                <a class="nav-link" href='/WebForm1.aspx'>Home</a>
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
            <div align="center">
                <label for="info"><b>Va rugam introduceti datele de contact: </b></label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />
                <label for="name">Nume: </label>
                <asp:TextBox ID="TextBox1" runat="server" Width="150px" />
                &nbsp;&nbsp;&nbsp;
                <label for="name1">Prenume: </label>
                <asp:TextBox ID="TextBox2" runat="server" Width="150px" />
                &nbsp;&nbsp;&nbsp; <br /><br />
                <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" Text="Reseteaza comanda" Width="175px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="PdfButton" runat="server" OnClick="PdfButton_Click" Text="Creeaza comanda" Width="175px" />
                
            </div>
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/vitB.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Vitamina B</h5>
                                    <!-- Product price-->
                                    32.00 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonVitaminaB" runat="server" Text="-" OnClick="ButonVitaminaB_Click" />
                                <asp:Label ID="LabelVitaminaB" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonVitaminaB" runat="server" Text="+" OnClick="ButonVitaminaB2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/vitAD.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Vitamina A si D</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">32.00</span>
                                    26.50 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">

                                <asp:Button ID="ButonVitaminaAD" runat="server" Text="-" OnClick="ButonVitaminaAD_Click" />
                                <asp:Label ID="LabelVitaminaAD" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonVitaminaAD" runat="server" Text="+" OnClick="ButonVitaminaAD2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/vitK.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Vitamina K</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">32.00</span>
                                    26.50 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                  
                                <asp:Button ID="ButonVitaminaK" runat="server" Text="-" OnClick="ButonVitaminaK_Click" />
                                <asp:Label ID="LabelVitaminaK" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonVitaminaK" runat="server" Text="+" OnClick="ButonVitaminaK2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/sirop.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sirop de tuse</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    27.50 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonSirop" runat="server" Text="-" OnClick="ButonSirop_Click" />
                                <asp:Label ID="LabelSiropTuse" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonSirop" runat="server" Text="+" OnClick="ButonSirop2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/apaTerm.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Apa termala Avene</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">50.00</span>
                                    32.00 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonApaTermala" runat="server" Text="-" OnClick="ButonApaTermala_Click" />
                                <asp:Label ID="LabelApaTermala" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                 <asp:Button ID="ButtonApaTermala" runat="server" Text="+" OnClick="ButonApaTermala2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/balsamRAS.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Balsam dupa ras</h5>
                                    <!-- Product price-->
                                    66.00 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonBalsam" runat="server" Text="-" OnClick="ButonBalsam_Click" />
                                <asp:Label ID="LabelBalsam" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonBalsam" runat="server" Text="+" OnClick="ButonBalsam2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/paracetamol.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Paracetamol</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">5.00</span>
                                    2.50 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonParacetamol" runat="server" Text="-" OnClick="ButonParacetamol_Click" />
                                <asp:Label ID="LabelParacetamol" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonParacetamol" runat="server" Text="+" OnClick="ButonParacetamol2_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="images/items/omega.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Omega 3</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    29.50 RON
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" align="center">
                                <asp:Button ID="ButonOmega3" runat="server" Text="-" OnClick="ButonOmega3_Click" />
                                <asp:Label ID="LabelOmega3" runat="server" Text="Numar Produse" Font-Bold="True"></asp:Label>
                                <asp:Button ID="ButtonOmega3" runat="server" Text="+" OnClick="ButonOmega32_Click" />
                            </div>
                        </div>
                    </div>
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

                        <p><a href="mailto:medfarm97@gmail.com">medfarm97@gmail.com</a><p>

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
