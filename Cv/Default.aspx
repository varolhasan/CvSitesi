<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cv.Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

    <!--- basic page needs
   ================================================== -->
    <meta charset="utf-8">
    <title>HASAN VAROL</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
   ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
   ================================================== -->
    <link rel="stylesheet" href="/cvtemp/css/base.css">
    <link rel="stylesheet" href="/cvtemp/css/main.css">
    <link rel="stylesheet" href="/cvtemp/css/vendor.css">

    <!-- script
   ================================================== -->
    <script src="/cvtemp/js/modernizr.js"></script>
    <script src="/cvtemp/js/pace.min.js"></script>

    <!-- favicons
	================================================== -->
    <link rel="icon" type="image/png" href="favicon.png">

    <!-- -->

</head>

<body id="top">

    <!-- header 
   ================================================== -->
    <header>
        <div style="min-width:100%; left:0px; width:1000px;" class="row">

            <div style:"width:1000px;" class="top-bar">
                <a class="menu-toggle" href="#"><span>MENÜ</span></a>

                <div class="logo">
                    <a href="index.html"></a>
                </div>

                <nav id="main-nav-wrap">
                    <ul class="main-navigation">
                        <li class="current"><a class="smoothscroll" href="#intro" title="">ANA SAYFA</a></li>
                        <li><a class="smoothscroll" href="#about" title="">HAKKIMDA</a></li>
                        <li><a class="smoothscroll" href="#resume" title="">EĞİTİM HAYATIM</a></li>
                        <li><a class="smoothscroll" href="#portfolio" title="">SERTİFİKALARIM</a></li>
                        <li><a class="smoothscroll" href="#services" title="">YETENEKLERİM</a></li>
                        <li><a class="smoothscroll" href="#contact" title="">İLETİŞİM</a></li>
                    </ul>
                </nav>
            </div>
            <!-- /top-bar -->

        </div>
        <!-- /row -->
    </header>


    <!-- /header -->

    <!-- intro section
   ================================================== -->
    <section id="intro">

        <div class="intro-overlay"></div>

        <div class="intro-content">
            <div class="row">

                <div class="col-twelve">

                    <h5>Herkese merhabalar ben</h5>
                    <h1>HASAN VAROL</h1>

                    <p class="intro-position">
                        <span>Mechanical Engineer</span>
                        <span>Front-end Developer</span>
                        <span>Back-end Developer</span>
                    </p>

                    <a class="button stroke smoothscroll" href="#about" title="">Hakkımda daha fazla bilgi için</a>

                </div>

            </div>
        </div>

        <!-- /intro-content -->

        <ul class="intro-social">
            <li><a href="https://www.linkedin.com/in/varol-hasan/"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="https://www.instagram.com/hasanvaroll/"><i class="fa fa-instagram"></i></a></li>
            <li><a href="https://github.com/varolhasan"><i class="fa fa-github"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
            <li><a href="https://www.facebook.com/hasanvarol06"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-stack-overflow"></i></a></li>
        </ul>
        <!-- /intro-social -->

    </section>
    <!-- /intro -->


    <!-- about section
   ================================================== -->
    <section id="about">

        <div class="row section-intro">
            <div class="col-twelve">

                <h5>Hakkımda</h5>
                <h1>Size kendimi tanıtmak isterim.</h1>

                <div class="intro-info">

                    <img src="/image/cvphoto.png" alt="Profile Picture">

                    <p class="lead"></p>
                </div>

            </div>
        </div>
        <!-- /section-intro -->

        <div class="row about-content">

            <div class="col-six tab-full">

                <h3>Profilim</h3>
                <p></p>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul class="info-list">
                            <li>
                                <strong>Ad ve Soyad :</strong>
                                <span>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("ADSOYAD")%>'></asp:Label>
                                </span>
                            </li>
                            <li>
                                <strong>Dogum Tarihi :</strong>
                                <span>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("DOGUMTARIH")%>'></asp:Label>
                                </span>
                            </li>
                            <li>
                                <strong>MESLEK :</strong>
                                <span>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("MESLEK")%>'></asp:Label>
                                </span>
                            </li>
                            <li>
                                <strong>ADRES :</strong>
                                <span>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("ADRES")%>'></asp:Label>
                                </span>
                            </li>
                            <li>
                                <strong>Email:</strong>
                                <span>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("MAIL")%>'></asp:Label>
                                </span>
                            </li>

                        </ul>
                    </ItemTemplate>
                </asp:Repeater>

                <!-- /info-list -->

            </div>

            <div class="col-six tab-full">

                <h3>Yetenekler</h3>
                <p>hem Full Stack Web Developer alanında hem de Mechanical Engineer alanında öğrendiklerim mevcuttur.</p>

                <ul class="skill-bars">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="progress percent">
                                    <!--
                                <span>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("ORAN")%>'></asp:Label>
                            </span>
                                -->
                                </div>
                                <strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("YETENEK")%>'></asp:Label></strong>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <!-- /skill-bars -->

            </div>

        </div>

        <div class="row button-section">
            <div class="col-twelve">
                <a href="#contact" title="Hire Me" class="button stroke smoothscroll">ıse Alım ıçin</a>
                <a href="/cvtemp/Hasan VAROL-CV.pdf" title="Download CV" class="button button-primary" download>CV'mi İndirin</a>
            </div>
        </div>

    </section>
    <!-- /process-->


    <!-- resume Section
   ================================================== -->
    <section id="resume" class="grey-section">

        <div class="row section-intro">
        </div>
        <!-- /section-intro-->

        <div class="row resume-timeline">

            <div class="col-twelve resume-header">

                <h2>Eğitim Hayatım</h2>

            </div>
            <!-- /resume-header -->


            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="col-twelve">

                        <div class="timeline-wrap">

                            <div class="timeline-block">

                                <div class="timeline-ico">
                                    <i class="fa fa-graduation-cap"></i>
                                </div>

                                <div class="timeline-header">
                                    <h3>
                                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                    </h3>
                                    <p>
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("TARIH")%>'></asp:Label>
                                    </p>
                                </div>

                                <div class="timeline-content">
                                    <h4>
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("BASLIK")%>'></asp:Label></h4>
                                    <h4>GNO :
                                        <asp:Label ID="Labe20" runat="server" Text='<%#Eval("GNO")%>'></asp:Label></h4>
                                    <p>
                                        <asp:Label ID="Label21" runat="server" Text='<%#Eval("ALTBASLIK1")%>'></asp:Label>
                                    </p>
                                    <p>
                                        <asp:Label ID="Label22" runat="server" Text='<%#Eval("ALTBASLIK2")%>'></asp:Label>
                                    </p>
                                </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <!-- /timeline-block -->


        <!-- /timeline-block -->


        <!-- /timeline-block -->

        </div>
                <!-- /timeline-wrap -->

        </div>
            <!-- /col-twelve -->

        </div>
        <!-- /resume-timeline -->


        <!-- /resume-timeline -->

    </section>
    <!-- /features -->


    <!-- Portfolio Section
   ================================================== -->
    <section id="portfolio">

        <div class="row resume-timeline">

            <div class="col-twelve resume-header">
            </div>
            <!-- /resume-header -->
            <section id="resume" class="grey-section">

                <div class="row section-intro">
                    <div class="col-twelve">
                        <h5>UDEMY & YOUTUBE & ÜNİVERSİTE</h5>
                        <h1>SERTİFİKALARIM</h1>
                    </div>
                </div>
                <!-- /section-intro-->

                <div class="row resume-timeline">

                    <div class="col-twelve resume-header">
                    </div>
                    <!-- /resume-header -->

                    <div class="col-twelve">

                        <div class="timeline-wrap">

                            <div class="timeline-block">
                                <asp:Repeater ID="Repeater4" runat="server">
                                    <ItemTemplate>
                                        <div class="col-twelve">

                                            <div class="timeline-wrap">

                                                <div class="timeline-block">
                                                    <div class="timeline-ico">
                                                        <i class="fa fa-certificate"></i>
                                                    </div>

                                                    <div class="timeline-header">
                                                        <h3></h3>
                                                        <p>
                                                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("ADRES")%>'></asp:Label>
                                                        </p>
                                                    </div>

                                                    <div class="timeline-content">
                                                        <h4>
                                                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("SERTIFIKA")%>'></asp:Label>
                                                        </h4>
                                                        <p>
                                                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("HOCA")%>'></asp:Label>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>



                                <!-- /timeline-block -->

                                <!-- /timeline-block -->

                                <!-- /timeline-block -->


                                <!-- /timeline-wrap -->


                                <!-- /col-twelve -->

                            </div>
                            <!-- /resume-timeline -->

                            <!-- /resume-timeline -->
            </section>



            <!-- /section-intro-->

            <!-- /portfolio-content -->
    </section>
    <!-- /portfolio -->


    <!-- CTA Section
   ================================================== -->

    <!-- /cta -->


    <!-- services Section
   ================================================== -->
    <section id="services">

        <div class="overlay"></div>

        <div class="row section-intro">
            <div class="col-twelve">

                <h5>Hizmetler</h5>
                <h1>Sizin için ne yapabilirim?</h1>

                <p class="lead">
                    Bir makine ve yazılım mühendisi olarak size solidworks kullanarak proje hazırlayabilirim. 
                    Bu proje makine mühendisi olarak bitirme projelerim referans gösterilerek sizin kafanızda fikir oluşmasını sağlar. 
                    Diğer yandan bir yazılımcı olarak sizin photoshop ile yapılacak işlerini yapabilirim. HTML5, CSS3, JavaScript, Asp.Net 
                    (Core, MVC, Identity vb.) araçları kullanarak full stack bir görevle hazırlanmış web sitesi hazırlayabilirim.
                </p>

            </div>
        </div>
        <!-- /section-intro -->

        <div class="row services-content">

            <div id="owl-slider" class="owl-carousel services-list">

                <div class="service">

                    <span class="icon"><i class="icon-earth"></i></span>

                    <div class="service-content">

                        <h3>Web Tasarımı</h3>
                    </div>

                </div>
                <!-- /service -->

                <div class="service">

                    <span class="icon"><i class="icon-window"></i></span>

                    <div class="service-content">

                        <h3>.Net Developer</h3>

                    </div>

                </div>
                <!-- /service -->

                <div class="service">

                    <span class="icon"><i class="icon-paint-brush"></i></span>

                    <div class="service-content">

                        <h3>Photoshop</h3>
                    </div>

                </div>
                <!-- /service -->


            </div>
            <!-- /service -->

        </div>
        <!-- /services-list -->

        </div>
        <!-- /services-content -->

    </section>
    <!-- /services -->


    <!-- stats Section
   ================================================== -->
    <section id="stats" class="count-up">

        <div class="row">
            <div class="col-twelve">

                <div class="block-1-4 block-s-1-3 block-tab-1-2 block-mob-full stats-list">

                    <div class="bgrid stat">

                        <div class="icon-part">
                            <i class="icon-pencil-ruler"></i>
                        </div>

                        <h3 class="stat-count">30
                        </h3>

                        <h5 class="stat-title">Proje
                        </h5>

                    </div>
                    <!-- /stat -->

                   
                    <!-- /stat -->

                    <div class="bgrid stat">

                        <div class="icon-part">
                            <i class="icon-badge"></i>
                        </div>

                        <h3 class="stat-count">12
                        </h3>

                        <h5 class="stat-title">Alınan Sertifika
                        </h5>

                    </div>
                    <!-- /stat -->


                    <!-- /stat -->

                    <div class="bgrid stat">

                        <div class="icon-part">
                            <i class="icon-cup"></i>
                        </div>

                        <h3 class="stat-count">150
                        </h3>

                        <h5 class="stat-title">Kahve Fincanı
                        </h5>

                    </div>
                    <!-- /stat -->

                    <div class="bgrid stat">

                        <div class="icon-part">
                            <i class="icon-clock"></i>
                        </div>

                        <h3 class="stat-count">300
                        </h3>

                        <h5 class="stat-title">Saatden fazla Kodlama
                        </h5>

                    </div>
                    <!-- /stat -->

                </div>
                <!-- /stats-list -->

            </div>
            <!-- /twelve -->
        </div>
        <!-- /row -->

    </section>
    <!-- /stats -->


    <!-- contact
   ================================================== -->
    <section id="contact">

        <div class="row section-intro">
            <div class="col-twelve">

                <h5>İletişim</h5>
                <h1>Benimle iletişime geçin.</h1>

                <p class="lead">Web alanında ve solidworks ile makine parçaları çizimi için, size uygun kriterleri sağlıyorsam 
                    benim ile iletişime geçebilirsiniz.</p>
            </div>
        </div>
        <!-- /section-intro -->

        <div class="row contact-form">

            <div class="col-twelve">

                <!-- form -->
                
                <!-- Form End -->

                <!-- contact-warning -->
                <div id="message-warning">
                </div>
                <!-- contact-success -->
                <div id="message-success">
                    <i class="fa fa-check"></i>Your message was sent, thank you!<br>
                </div>

            </div>
            <!-- /col-twelve -->

        </div>
        <!-- /contact-form -->

        <div class="row contact-info">

            <div class="col-four tab-full">

                <div class="icon">
                    <i class="icon-pin"></i>
                </div>

                <h5>Adresim</h5>

                <p>
                    Barıştepe Mahallesi, Piri Caddesi<br>
                    Nur Apartman No: 21/24<br>
                    Yenimahalle, ANKARA
                </p>

            </div>

            <div class="col-four tab-full collapse">

                <div class="icon">
                    <i class="icon-mail"></i>
                </div>

                <h5>Mail Adreslerim</h5>

                <p>
                    hasanvarooll@gmail.com<br>
                    varoool4@outlook.com			     
                </p>

            </div>

            <div class="col-four tab-full">

                <div class="icon">
                    <i class="icon-phone"></i>
                </div>

                <h5>Telefon</h5>

                <p>
                    Telefon: (+90) 551 397 5958<br>
                </p>

            </div>

        </div>
        <!-- /contact-info -->

    </section>
    <!-- /contact -->


    <!-- footer
   ================================================== -->

    <footer>
        
        <!-- /row -->
    </footer>

    <div id="preloader">
        <div id="loader"></div>
    </div>

    <!-- Java Script
   ================================================== -->
    <script src="/cvtemp/js/jquery-2.1.3.min.js"></script>
    <script src="/cvtemp/js/plugins.js"></script>
    <script src="/cvtemp/js/main.js"></script>


</body>

</html>
