<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="ibw icon" href="images/BrowserlLogo.png" sizes="128x128">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IBW INGENIEROS</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/cust.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script type="text/javascript" src="css/wow.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>  
		new WOW().init();  	
    </script>
	
    




    
    
</head>

<body data-spy="affix" data-target="#site-navbar" data-offset="200">
 	
    <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark sticky-top" id="site-navbar" name="site-navbar">
      <div class="container">
        <a class="logoFont wow animate tada" align="center" href="INDEX.jsp">
			<img src="images/SmallLogo.png" class="wow animate fadeInUp" width="130" height="50" data-wow-duration = "2s"> <br>
            IBW INGENIEORS
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menú
        </button>


        <div class="collapse navbar-collapse  wow fadeInDown" id="site-nav">
          <ul class="navbar-nav ml-auto">
          
            <li class="nav-item"><a href="#section-home" class="nav-link">Principal</a></li>
             <li class="nav-item dropdown">
             <a  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre Nosotros</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="#section-about">IBW INGENIROS</a>
                        <a class="dropdown-item" href="#section-partners">SOCIO</a>
                    </div>
            </li>

            <li class="nav-item dropdown">
             <a  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="#section-eventos">Eventos</a>
                        <a class="dropdown-item" href="#section-ferias">Ferias</a>
                        <a class="dropdown-item" href="#section-edificacion">Edificacion</a>
                    </div>
            </li>
            
            <!-- DropDown -->
            
			<li class="nav-item"><a href="#section-contact" class="nav-link">Comunicación</a></li>    
            
             <li class="nav-item dropdown">
             <a  class="nav-link dropdown-toggle " href="INDEX.jsp" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                    	<a class="dropdown-item" href="INDEX.jsp"><img src="images/ukLogo.png" width="25px" height="15px"> English</a>
                        <a class="dropdown-item" href="INDEX_lang=es.html"><img src="images/spainLogo.png" width="25px" height="15px">español</a>

                    </div>
            </li>
               
			<li class="nav-item">
				
             </li>  
             <li class="nav-item">
				
             </li>    
              <li class="nav-item">
				 
             </li> 
          </ul>
          

        </div>

      </div>
      <div class="snsContainer">
				<a href="https://www.facebook.com/search/top/?q=IBW%20INGENIEROS&epa=SEARCH_BOX">
            		<img src="images/FBlogo.png" width="20px" height="20px" >
				</a>
                 <a href="http://www.linkedin.com">
            		<img src="images/lilogo.png" width="30px" height="30px" >
				</a>
                
		</div>
    <a href="MANAGE.jsp"> <button type="submit" class="btn manageBtn">manage</button></a>              			
    </nav>

    <!-- END nav -->
    

   </div>



    
    <section class="site-cover"  id="section-home">
	 <div class="carouselWidth">
        <div id="myCarousel" class="carousel slide " data-ride="carousel">

 

            <!-- Indicators -->

            <ul class="carousel-indicators">

                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->

            <div class="carousel-inner">

                <div class="carousel-item active">

                    <img src="images/Indoor1.png" id="ScrollImg1" alt="1" width="1400px" height="610px">
                    
                    <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPosition animated bounceInDown">Creamos algo.</h3>
                         	<h2 class="MainFont2 animated bounceInUp">EVENTOS * FERIAS * EDIFICACION</h2> 
                        </div>
					</div>
                </div>

                <div class="carousel-item">

                    <img src="images/Indoor2.png" id="ScrollImg2" alt="2" width="1400px" height="610px">
                     <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPositionBlue animated bounceInLeft">Estamos haciendo algo.</h3>
                         	<h2 class="MainFont2pink animated bounceInUp">EVENTOS * FERIAS * EDIFICACION</h2> 
                        </div>
					 </div>

                </div>

                <div class="carousel-item">

                    <img src="images/Indoor3.png" id="ScrollImg3" alt="3" width="1400px" height="610px">
                    
                     <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPositionRed animated bounceInRight">Hacemos algo.</h3>
                         	<h2 class="MainFont2Red animated bounceInUp">EVENTOS * FERIAS * EDIFICACION</h2> 
                        </div>
					</div>

                </div>

            </div>

 

            <!-- Left and right controls -->

            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">

                <span class="carousel-control-prev-icon"></span>

            </a><a class="carousel-control-next" href="#myCarousel" data-slide="next"> <span class="carousel-control-next-icon"></span></a>

        </div>

    </div>
	</section>
 
  

  

  
    
    <!-- new section -->
    
       <section class="site-section"  id="section-about">
      	<div id="Aboutcontain2">
        
        <div class="row SiteMargin ">
          <div class="col-md-12 text-center mb-5">
            <h4 class="AboutFont wow bounceInDown" data-wow-duration = "2s">Sobre Nosotros</h4>
            <img src="images/SmallLogo.png" alt="logo" width="250" height="130" class="img-fluid wow bounceInDown" data-wow-duration = "2s"> </br>
            <h2 class="AboutFont2 wow bounceInDown" data-wow-duration = "2s">IBW INGENIEORS</h2> <br>
			<p class="AboutFont3 wow bounceInUp" data-wow-duration = "2s">IBW INGENIEROS is a Spanish company, founded in more than 10 years ago,</br>
            with the objetive of mainly working in the field of creating and managing Projects in the field of Engineering;<br> in cooperation 						            with designers, architects and other disciplines related to these fields.</br> 
            IBW INGENIEROS actually works in three different areas: Indoor fairs, Outdoor events and Construction.</br>
            IBW INGENIEROS has presence both National Level (Valencia, Madrid,Barcelona) <br> 
            and International Level (Lisboa, London, Milano, Frankfurt, Geneve) </p>  

              
           </div>
          
    	</section>
    <!-- END section -->
    
    <!-- New Section -->
    <section class="site-section bg-light" id="section-eventos">
      	<div id="contain22">
        
        <div class="row SiteMargin">
          <div class="col-md-12 text-center mb-5 site-animate wow bounceInDown" data-wow-duration = "2s">
            <h4 class="EventosFont">Eventos</h4>
			<h2 class="EventosFont2">OUTDOOR EVENTS</h2>
			<p class="EventosFont3">
            Creation and management of different Projects<br>
            (structure calculation,installation certification, marquee certification, stands distribution…)<br>
            related to these outdoor shows according to the rules defined by the different Events <br>
			(Rock in Rio or Meo Mare Vivas, for example).
            </p>
            
            <div class="ImgContainer wow fadeInLeft">
 					 <img src="images/Indoor1.png" alt="" width="400" height="300" >
            </div>
			
            <div class="ImgContainer2 wow fadeInRight">
 					 <img src="images/Indoor2.png" alt="" width="400" height="300" >
             </div>
             
             <div class="ImgContainer3 wow fadeInLeft">
 					 <img src="images/Indoor3.png" alt="" width="410" height="300" >
             </div>
             
             <div class="ImgContainer4 wow fadeInRight">
 					 <img src="images/Indoor4.png" alt="" width="410" height="300" >
             </div>
             
             <div class="ImgContainer5 wow fadeInLeft">
 					 <img src="images/Indoor5.png" alt="" width="410" height="300" >
             </div>

          </div>
          
    </section>
    <!--End Section-->
    
     <!-- Ferias Section -->
    <section class="site-section" id="section-ferias">
      	<div id="Feriascontain2">
        
        <div class="row SiteMargin">
          <div class="col-md-12 text-center mb-5 wow bounceInDown" data-wow-duration = "2s">
            <h4 class="FeriasFont">FERIAS</h4>
            <h2 class="FeriasFont2">INDOOR FAIRS</h2>
            <p class="FeriasFont3">
            Creation and management of different Projects<br>
            (structure calculation, installation certification, rigging projects, stands and loft distribution, electrical projects…)<br>
            related to these trade shows according to the Fairgrounds’ procedures<br>
            in Valencia (Feria Valencia), Madrid (IFEMA) or Barcelona (Fira Barcelona), among others.
            </p>
            
             <div class="FeriasContainer wow fadeInLeft">
 					 <img src="images/Outdoor1.png" alt="" width="450" height="300" >
            </div>
			
            <div class="FeriasContainer2 wow fadeInRight">
 					 <img src="images/Outdoor2.png" alt="" width="450" height="300" >
             </div>
             
             
          </div>
          
    </section>
    <!--End Section-->
    
    
     <!-- New Section -->
    <section class="site-section  bg-light" id="section-edificacion">
      	<div id="Edificontain2">
        
        <div class="row SiteMargin">
          <div class="col-md-12 text-center mb-5 wow bounceInDown" data-wow-duration = "2s">
            <h4 class="EdifiFont">EDIFICACION</h4>
            <h2 class="EdifiFont2">CONSTRUCTION</h2>
			<p class="EdifiFont3">
            Creation and management of Common Telecommunications Infraestructures (CTI) Projects,<br>
            Energetic Efficiency Projects, Acoustic Projects, Electrical Projects, Activity License Projects,<br>
            Security and Health Projects, Self-Protection Projects…
            </p>
            
            <div class="ConstrContainer wow fadeInLeft">
 					 <img src="images/Construction1.png" alt="" width="450" height="300" >
            </div>
			
            <div class="ConstrContainer2 wow fadeInRight">
 					 <img src="images/Construction2.png" alt="" width="450" height="300" >
             </div>
             
		</div>
          
    </section>
    <!--End Section-->
    
    <!-- New Section -->
    <section class="site-section " id="section-contact">
      	<div id="contain3">
        
        <div class="row SiteMargin">
          <div class="col-md-12 text-center mb-5 wow bounceInDown" data-wow-duration = "2s">
            <h4 class="ContactFont wow animated fadeInUp">CONTACT US</h4>
            <h2 class="ContactFont2 wow animated fadeInUp">Get In Touch</h2>
			
          </div>

          <div class="ContactContainer">
            <p><img src="images/SmallLogo.png" class ="wow animated fadeInUp" alt="Company Logo" width="400" height="160" class="img-fluid"></p>
		    <p class="logoFont2 wow animated tada" >IBW INGENIEORS</p>
            <p class="text-black wow animated bounceInUp">
              ADDRESS <br> 121 Street, Spain Valencia 3000 Barcelona <br> <br>
              PHONE <br> 123 456 789 <br> <br>
              EMAIL <br> <a href="PROYECTOS@IBW.ES">PROYECTOS@IBW.ES</a>
            </p>
          </div>
			
          <div class="EmailContainer">  
            <form>
              <div class="form-group">
                <label for="exampleFormControlInput1">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" >
              </div>
              <div class="form-group">
                <label for="exampleFormControlSelect1">Example select</label>
                <select class="form-control" id="exampleFormControlSelect1">
                  <option>Ask</option>
                  <option>Join</option>
                  <option>Problem</option>

                </select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlSelect2">Part</label>
                <select multiple class="form-control" id="exampleFormControlSelect2">
                  <option>Engineer</option>
                  <option>Marketing</option>
                  <option>Services</option>
				</select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Example textarea</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary mb-2">Send</button>
            </form>
          </div>

        </div>
          
    </section>
    <!--End Section-->
    
    <!-- New Section -->
    <section class="site-section " id="section-partners">
      	<div id="partnercontain">
        
        <div class="row SiteMargin">
          <div class="col-md-12 text-center mb-5 wow bounceInDown" data-wow-duration = "2s">
            <h3 class="ContactFont wow animated fadeInUp">PARTNERS</h3>
          </div>
          

          <div class="ContactContainer">
          	<a href="https://www.feriavalencia.com/en/"><img src="images/FeriaValenciaLogo.png" width="120" height="80"></a>
            <a href="https://www.euroace.net/"><img src="images/euroaceLogo.png" width="220" height="110"></a>
          </div>

        </div>
          
    </section>
    <!--End Section-->
    
     <footer class="Custfooter site-bg-black" >
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-12 text-center wow fadeInUp" data-wow-duration="2s">
                <h2 class="site-heading-2 whiteFont">About Us</h2>
                <p class="whiteFont">We are IBW Ingenieors. We can make Something New. You can enjoy. If you want to join us, contact us. </br>
                You wanna Something? We can make it. Business To Business Company.
                </p>
              </div>
            </div>
          </div>         
        </div>

          <div class="col-md-12 text-center" data-wow-duration="2s">
            <p class="whiteFont">CopyRight All Researved || IBW INGENIEROS </p>
            <p class="whiteFont BottomCreate">CREATED BY JAY,JOSEPH,JASON</p>
          </div>
      </div>
    </footer>

</body>
</html>
