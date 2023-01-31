<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>MedFarm</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/owl.carousel.min.css" rel="stylesheet">

        <link href="css/owl.theme.default.min.css" rel="stylesheet">

        <link href="css/templatemo-medic-care.css" rel="stylesheet">

    </head>
    
    <body id="top">
    
        <form id="form1" runat="server">
    
        <main>

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
                                <a class="nav-link" href="#hero">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#about">About</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#timeline">Timeline</a>
                            </li>

                            <a class="navbar-brand d-none d-lg-block" href='/webform1.aspx'>
                                MedFarm
                                <strong class="d-block">Health Above All</strong>
                            </a>

                            <li class="nav-item">
                                <a class="nav-link" href='/Login.aspx'>Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href='/WebForm3.aspx'>Locations</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contact</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </nav>

            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="images/slider/woman.jpg" class="img-fluid" alt="">
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/woman2.jpeg" class="img-fluid" alt="">
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/doctor-s-hand-holding-stethoscope-closeup.jpg" class="img-fluid" alt="">
                                    </div>
                                </div>
                            </div>

                            <div class="heroText d-flex flex-column justify-content-center">

                                <h1 class="mt-auto mb-2">
                                    Better
                                    <div class="animated-info">
                                        <span class="animated-item">health</span>
                                        <span class="animated-item">days</span>
                                        <span class="animated-item">lives</span>
                                    </div>
                                </h1>

                                <p class="mb-4">MedFarm pune oamenii pe primul loc si isi doreste sa aduca tuturor pacientilor produse medicale de calitate si accesibile din punct de vedere al pretului.</p>

                                <div class="heroLinks d-flex flex-wrap align-items-center">
                                    <a class="custom-link me-4" href="#about" data-hover="Learn More">Learn More</a>

                                    <p class="contact-phone mb-0"><i class="bi-phone"></i> 010-020-0340</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding" id="about">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-6 col-12">
                            <h2 class="mb-lg-3 mb-3">Despre noi</h2>

                            <p><b>Din 1992, cu pasiune pentru profesia de farmacist și din dragoste pentru oameni!</b></p>

                            <p>Preturi corecte. Două cuvinte ce înglobează perfect rețeta după care ne ghidăm, la care adăugăm experiența bogată, acumulată începând cu anul 1992, legăturile strânse cu principalii furnizori de pe piață, și nu în ultimul rând, loialitatea clienților noștri. Acești factori au făcut ca MedFarm să fie acum lider de piață în sectorul pe care îl ocupă în online.</p>
                        </div>

                        <div class="col-lg-4 col-md-5 col-12 mx-auto">
                            <div class="featured-circle bg-white shadow-lg d-flex justify-content-center align-items-center">
                                <p class="featured-text"><span class="featured-number">30</span> Years<br> of Experience</p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="gallery">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-6 ps-0">
                            <img src="images/gallery/portrait.jpg" class="img-fluid galleryImage">
                        </div>

                        <div class="col-lg-6 col-6 pe-0">
                            <img src="images/gallery/helping.jpeg" class="img-fluid galleryImage">
                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding pb-0" id="timeline">
                <div class="container">
                    <div class="row">

                        <h2 class="text-center mb-lg-5 mb-4">Our Timeline</h2>
                        
                        <div class="timeline">
                            <div class="row g-0 justify-content-end justify-content-md-around align-items-start timeline-nodes">
                                <div class="col-9 col-md-5 me-md-4 me-lg-0 order-3 order-md-1 timeline-content bg-white shadow-lg">
                                    <h3 class=" text-light">Prima farmacie MedFarm</h3>

                                    <p>Anul 1992 a fost anul in care s-a infiintat prima farmacie MedFarm din tara.</p>
                                </div>

                                <div class="col-3 col-sm-1 order-2 timeline-icons text-md-center">
                                    <i class="bi-patch-check-fill timeline-icon"></i>
                                </div>

                                <div class="col-9 col-md-5 ps-md-3 ps-lg-0 order-1 order-md-3 py-4 timeline-date">
                                    <time>1992-02-19 Wednesday</time>
                                </div>
                            </div>

                            <div class="row g-0 justify-content-end justify-content-md-around align-items-start timeline-nodes my-lg-5 my-4">
                                <div class="col-9 col-md-5 ms-md-4 ms-lg-0 order-3 order-md-1 timeline-content bg-white shadow-lg">
                                    <h3 class=" text-light">Ne extindem</h3>

                                    <p>Dupa aproximativ doi ani de existenta, am decis sa ne extindem si in alte judete.</p>
                                </div>

                                <div class="col-3 col-sm-1 order-2 timeline-icons text-md-center">
                                    <i class="bi-book timeline-icon"></i>
                                </div>

                                <div class="col-9 col-md-5 pe-md-3 pe-lg-0 order-1 order-md-3 py-4 timeline-date">
                                    <time>1994-07-15 Friday</time>
                                </div>
                            </div>

                            <div class="row g-0 justify-content-end justify-content-md-around align-items-start timeline-nodes">
                                <div class="col-9 col-md-5 me-md-4 me-lg-0 order-3 order-md-1 timeline-content bg-white shadow-lg">
                                    <h3 class=" text-light">Devenim tot mai populari</h3>

                                    <p>Conform statisticilor, in anul 2005, lantul de farmacii MedFarm este cel mai cautat si iubit de oameni.</p>
                                </div>

                                <div class="col-3 col-sm-1 order-2 timeline-icons text-md-center">
                                    <i class="bi-file-medical timeline-icon"></i>
                                </div>

                                <div class="col-9 col-md-5 ps-md-3 ps-lg-0 order-1 order-md-3 py-4 timeline-date">
                                    <time>2005-10-25 Tuesday</time>
                                </div>
                            </div>

                            <div class="row g-0 justify-content-end justify-content-md-around align-items-start timeline-nodes my-lg-5 my-4">
                                <div class="col-9 col-md-5 ms-md-4 ms-lg-0 order-3 order-md-1 timeline-content bg-white shadow-lg">
                                    <h3 class=" text-light">Suntem online</h3>
                                    
                                    <p>Din dorinta de a fi cat mai aproaope de oameni, am creat si o farmacie online, ca oameni sa poata accesa si mai usor produsele noastre.</p>
                                </div>

                                <div class="col-3 col-sm-1 order-2 timeline-icons text-md-center">
                                    <i class="bi-globe timeline-icon"></i>
                                </div>

                                <div class="col-9 col-md-5 pe-md-3 pe-lg-0 order-1 order-md-3 py-4 timeline-date">
                                    <time>2011-06-05 Saturday</time>
                                </div>
                            </div>

                            <div class="row g-0 justify-content-end justify-content-md-around align-items-start timeline-nodes">
                                <div class="col-9 col-md-5 me-md-4 me-lg-0 order-3 order-md-1 timeline-content bg-white shadow-lg">
                                    <h3 class=" text-light">Recunostință</h3>

                                    <p>De Ziua Mondiala a Farmacistului, am primit titlul de cel mai popular lant de farmacii din tara.</p>
                                </div>

                                <div class="col-3 col-sm-1 order-2 timeline-icons text-md-center">
                                    <i class="bi-person timeline-icon"></i>
                                </div>

                                <div class="col-9 col-md-5 ps-md-3 ps-lg-0 order-1 order-md-3 py-4 timeline-date">
                                    <time>2021-09-25 Saturday</time>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding pb-0" id="reviews">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <h2 class="text-center mb-lg-5 mb-4">Reviews</h2>

                            <div class="owl-carousel reviews-carousel">

                                <figure class="reviews-thumb d-flex flex-wrap align-items-center rounded">
                                    <div class="reviews-stars">
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star"></i>
                                    </div>

                                    <p class="text-primary d-block mt-2 mb-0 w-100"><strong>Tot ce ai nevoie</strong></p>

                                    <p class="reviews-text w-100">Farmacia MedFarm este locul unde gasesti toate produsele si medicamentele de care ai nevoie. Felicitari!</p>

                                    <img src="images/reviews/beautiful-woman-face-portrait-brown-background.jpeg" class="img-fluid reviews-image" alt="">

                                    <figcaption class="ms-4">
                                        <strong>Maria</strong>

                                        <span class="text-muted">Client</span>
                                    </figcaption>
                                </figure>

                                <figure class="reviews-thumb d-flex flex-wrap align-items-center rounded">
                                    <div class="reviews-stars">
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star"></i>
                                    </div>

                                    <p class="text-primary d-block mt-2 mb-0 w-100"><strong>Profesionalism</strong></p>

                                    <p class="reviews-text w-100">Profesionalism, promptitudine, seriozitate. Felicitari, MedFarm! Sunt foarte multumit de produsele voastre.</p>

                                    <img src="images/reviews/senior-man-wearing-white-face-mask-covid-19-campaign-with-design-space.jpeg" class="img-fluid reviews-image" alt="">

                                    <figcaption class="ms-4">
                                        <strong>Valentin</strong>

                                        <span class="text-muted">Client</span>
                                    </figcaption>
                                </figure>

                                <figure class="reviews-thumb d-flex flex-wrap align-items-center rounded">
                                    <div class="reviews-stars">
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                    </div>

                                    <p class="text-primary d-block mt-2 mb-0 w-100"><strong>Preturi avantajoase</strong></p>

                                    <p class="reviews-text w-100">O farmacie cu preturi mici si personal excelent. Revin cu drag de fiecare data.</p>

                                    <img src="images/reviews/portrait-british-woman.jpeg" class="img-fluid reviews-image" alt="">

                                    <figcaption class="ms-4">
                                        <strong>Laura</strong>

                                        <span class="text-muted">Client</span>
                                    </figcaption>
                                </figure>

                                <figure class="reviews-thumb d-flex flex-wrap align-items-center rounded">
                                    <div class="reviews-stars">
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                        <i class="bi-star-fill"></i>
                                    </div>

                                    <p class="text-primary d-block mt-2 mb-0 w-100"><strong>Personal deosebit</strong></p>

                                    <p class="reviews-text w-100">Frecventez de foarte mult timp aceste farmacii si intotdeauna personalul MedFarm a fost foarte politicos si respectuos cu clientii, ofera sfaturi de calitate si te ajuta cu orice problema. Recomand</p>

                                    <img src="images/reviews/woman-wearing-mask-face-closeup-covid-19-green-background.jpeg" class="img-fluid reviews-image" alt="">

                                    <figcaption class="ms-4">
                                        <strong>Corina</strong>

                                        <span class="text-muted">Client</span>
                                    </figcaption>
                                </figure>
                               
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                
                                <h2 class="text-center mb-lg-3 mb-2">View Products</h2>
                            
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <br />
                                            &nbsp;<br />
                                        </div>                                                                          

                                        <div class="col-12" align="center">
                                            <asp:Button ID="Button2" runat="server" BorderColor="Black" Text="Mergi la pagina de login" Width="263px" BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="50px" OnClick="Button2_Click" />          
                                        </div>
                                    </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main>

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