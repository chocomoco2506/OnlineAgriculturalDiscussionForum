
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Homepage.home" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>N & LW Lawn Care - Landscaping Bootstrap4 HTML5 Responsive Template </title>
	<!-- Bootstrap core CSS -->
	<link href="bootstrap.min.css" rel="stylesheet">
	<!-- Fontawesome CSS -->
	<link href="all.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="style.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-light top-nav fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">
            <img src="images/logo3.png" alt="logo" />
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fas fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                     <a class="nav-link " href="home.aspx">Home</a>
                  </li>
                   <li class="nav-item">
                     <a class="nav-link " href="login1.aspx">view Post</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link " href="login1.aspx">Create Topic</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link " href="login1.aspx">MyTopic</a>
                  </li>
                                    
                 

                   <li class="nav-item">
                     <a class="nav-link " href="login1.aspx">Login</a>
                  </li>

               </ul>
            </div>
        </div>
    </nav>
    <header class="slider-main">
        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
               <!-- Slide One - Set the background image for this slide in the line below -->
               <div class="carousel-item active" style="background-image: url('images/corn.jpg')">
                  
               </div>
               <!-- Slide Two - Set the background image for this slide in the line below -->
               <div class="carousel-item" style="background-image: url('images/slider-0111.jpg')">
                  <div class="carousel-caption d-none d-md-block">
                     
                  </div>
               </div>
               <!-- Slide Three - Set the background image for this slide in the line below -->
               <div class="carousel-item" style="background-image: url('images/rice.jpg')">
                  <div class="carousel-caption d-none d-md-block">
                     
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
            </a>
        </div>
    </header>
    <!-- Page Content -->
    <div class="container">
        <div class="services-bar">
            <h1 class="my-4">Hot Topic </h1>
            <!-- Services Section -->
            <div class="row">
               <div class="col-lg-4 mb-4">
                  <div class="card h-100">
                     <h4 class="card-header"><asp:Literal ID="t1" runat="server" ></asp:Literal></h4>
                     <div class="card-img">
                       <asp:Image runat="server" ID="img1" />
                     </div>
                     <div class="card-body">
                        <asp:Literal ID="l1" runat="server" ></asp:Literal>
                     </div>
                     
                  </div>
               </div>
               <div class="col-lg-4 mb-4">
                  <div class="card h-100">
                     <h4 class="card-header"><asp:Literal ID="t2" runat="server" ></asp:Literal></h4>
                     <div class="card-img">
                        <asp:Image runat="server" ID="img2"/>
                     </div>
                     <div class="card-body">
                        <asp:Literal ID="l2" runat="server" ></asp:Literal>
                     </div>
                     
                  </div>
               </div>
               <div class="col-lg-4 mb-4">
                  <div class="card h-100">
                     <h4 class="card-header"><asp:Literal ID="t3" runat="server" ></asp:Literal></h4>
                     <div class="card-img">
                        <asp:Image runat="server" ID="img3" />
                     </div>
                     <div class="card-body">
                        <asp:Literal ID="l3" runat="server" ></asp:Literal>
                     </div>
                     
                  </div>
               </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- About Section -->
        <div class="about-main">
            <div class="row">
               <div class="col-lg-6">
                  <h2>Welcome to Our System</h2>
                  
                  <h5>Our smart approach</h5>
                  <ul>
                     <li>Share information, insights, and experiences related to farming practices, crop cultivation, livestock management, and agricultural technology.</li>
                     <li> Collaboratively solve agricultural challenges and seek advice on issues like pests, diseases, and crop yields.</li>
                     <li>Connect with others in the agriculture industry, build professional relationships, and potentially find business opportunities or partnerships.</li>
                     <li>Learn about new farming techniques, sustainable practices, and advancements in agricultural science.</li>
                     <li>Foster a sense of community among members with shared interests in agriculture.</li>
                  </ul>
                  
               </div>
               <div class="col-lg-6">
                  <img class="img-fluid rounded" src="images/about.jpg" alt="" />
               </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- Portfolio Section -->
        <div class="portfolio-main">
            <h2>Our Photos</h2>
            <div class="row">
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-01.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                          
                        </h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-02.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                           
                        </h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-03.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                           
                        </h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-04.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                           
                        </h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-05.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                           
                        </h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-sm-6 portfolio-item">
                  <div class="card h-100">
                     <div class="card-img">
                        <a href="#">
                           <img class="card-img-top" src="images/portfolio-img-01.jpg" alt="" />
                           <div class="overlay"><i class="fas fa-arrows-alt"></i></div>
                        </a>
                     </div>
                     <div class="card-body">
                        <h4 class="card-title">
                           
                        </h4>
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.row -->
        </div>
        <hr>
        <!-- Get In Touch Now Section -->
        
    </div>
    <!-- /.container -->
    <!--footer starts from here-->
    <footer class="footer">
        <div class="container">
            <div class="footer-logo">
				
			</div>
            <!--foote_bottom_ul_amrc ends here-->
            <p class="copyright text-center">All Rights Reserved. &copy; 2018  Design By : 
				<a href="https://html.design/">html design</a>
            </p>
            <ul class="social_footer_ul">
				<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fab fa-instagram"></i></a></li>
            </ul>
            <!--social_footer_ul ends here-->
        </div>
    </footer>
	  
<!-- Bootstrap core JavaScript -->
<script src="jquery.min.js"></script>
<script src="bootstrap.bundle.min.js"></script>
</body>
</html>
