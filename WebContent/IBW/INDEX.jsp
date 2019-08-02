<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>


<%@ page import="java.io.*"%>
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
	
    <%
    // 실제로 서버에 저장되는 path
   
    String path = request.getRealPath("/File");
    out.println("절대 경로 : " + path + "<br/>");
    
    int size = 1024 * 1024 * 10; // 파일 사이즈 설정 : 10M
    String filename1 = "";    // 업로드한 파일 이름
    String filename2 = "";
    String filename3 = "";
    String originalFileName = "";    //  서버에 중복된 파일 이름이 존재할 경우 처리하기 위해
    
    
    // cos.jar라이브러리 클래스를 가지고 실제 파일을 업로드하는 과정
    try{
        // DefaultFileRenamePolicy 처리는 중복된 이름이 존재할 경우 처리할 때
        // request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 정책
        MultipartRequest multi = new MultipartRequest(request, path, size, "EUC-KR");
        
        // 전송한 전체 파일이름들을 가져온다.
        Enumeration files = multi.getFileNames();
        
        String file1 = (String)files.nextElement();
        filename1 = multi.getFilesystemName(file1);
        
        String file2 = (String)files.nextElement();
        filename2 = multi.getFilesystemName(file2);
        
        String file3 = (String)files.nextElement();
        filename3 = multi.getFilesystemName(file3);
        //파일명 중복이 발생했을 때 정책에 의해 뒤에 1,2,3 처럼 숫자가 붙어 고유 파일명을 생성한다.
        // 이때 생성된 이름을 FilesystemName이라고 하여 그 이름 정보를 가져온다. (중복 처리)
       
                 

        
    }catch(Exception e){
        e.printStackTrace();
    }
   
    out.println("절대 경로 : " + filename1  + "<br/>");
%>
<%

  String filePath = path + "/"; //파일이 존재하는 실제경로
 
  File f = new File(filePath); 
  
  File [] files = f.listFiles(); //파일의 리스트를 대입
  
  for (int a = 0; a< files.length; a++) {
	  out.println(files[a].getName()+" / ");
  }
  
  // + files[files.length-1].getName();
  String fullpath1 = "http://localhost:8080/IBW/File/second.png"; 
  String fullpath2 = "http://localhost:8080/IBW/File/first.png";
  String fullpath3 = "http://localhost:8080/IBW/File/third.png";
  
  File oldFile1 = new File(filePath + filename1);
  File oldFile2 = new File(filePath + filename2);
  File oldFile3 = new File(filePath + filename3);

  File newFile1 = new File(filePath + "first.png");
  File newFile2 = new File(filePath + "second.png");
  File newFile3 = new File(filePath + "third.png");
  
  oldFile1.renameTo(newFile1);
  oldFile2.renameTo(newFile2);
  oldFile3.renameTo(newFile3);
  
%>

<script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>

    <script>
    
   $(function () {
    var lastScrollTop = 0, delta = 15;
    
    $(window).scroll(function (event) {
        var st = $(this).scrollTop();
        
        if (Math.abs(lastScrollTop - st) <= delta) return;
        
        if ((st > lastScrollTop) && (lastScrollTop > 00)) {
            $(".banner").css("top", "-125px");
        }  else  {      
            $(".banner").css("top", "260px");
        }     
        lastScrollTop = st;
        
        if (scrollHeight - scrollTop === self.innerHeight()) {
            $(".banner").css("margin-bottom","400px");
      }
    });
    
   });
   
   </script>
   
   <style>
.banner{
   position:fixed;
   width:200px;
   height:350px;
   margin-top:300px;
   margin-left:1060px;
   background-color:transparent;
   box-sizing:border-box;
   transition: All 0.2s ease; 
   -webkit-transition: All 0.2s ease;
   -moz-transition: All 0.2s ease;
   -o-transition: All 0.2s ease;
}
.smallBanner{
   width:150px;
   height:150px;
   margin-left:25px;
   margin-top:10px;
   box-sizing:border-box;
   background-color:transparent;
   box-shadow: #C9C;
   border-radius: 10px / 10px;
   text-align: center;
   border: 1px solid #666;
   
}
</style>

</head>

<body data-spy="affix" data-target="#site-navbar" data-offset="200">
 	
    <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark sticky-top" id="site-navbar" name="site-navbar">
      <div class="container">
        <a class="logoFont wow animate tada" align="center" href="INDEX.jsp">
			<img src="images/SmallLogo.png" class="wow animate fadeInUp" width="130" height="50" data-wow-duration = "2s"> <br>
            IBW INGENIEORS
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>


        <div class="collapse navbar-collapse  wow fadeInDown" id="site-nav">
          <ul class="navbar-nav ml-auto">
          
            <li class="nav-item"><a href="#section-home" class="nav-link">Home</a></li>
             <li class="nav-item dropdown">
             <a  class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About Us</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="#section-about">IBW INGENIROS</a>
                        <a class="dropdown-item" href="#section-partners">PARTNERS</a>
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
            
			<li class="nav-item"><a href="#section-contact" class="nav-link">Contact</a></li>    
            
             <li class="nav-item dropdown">
             <a  class="nav-link dropdown-toggle " href="INDEX.jsp" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                    	<a class="dropdown-item" href="INDEX.jsp"><img src="images/ukLogo.png" width="25px" height="15px"> English</a>
                        <a class="dropdown-item" href="INDEX_lang=es.jsp"><img src="images/spainLogo.png" width="25px" height="15px">español</a>

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
            		<img src="images/Lilogo.png" width="30px" height="30px" >
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
                


                    <img src="<%=fullpath1%>"  alt="1" width="1400px" height="610px">
                    
                    <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPosition animated bounceInDown">We Create Something</h3>
                         	<h2 class="MainFont2 animated bounceInUp">EVENTOS * FERIAS * EDIFICACION</h2> 
                        </div>
					</div>
                </div>

                <div class="carousel-item">

                    <img src="<%=fullpath2%>"  alt="2" width="1400px" height="610px">
                     <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPositionBlue animated bounceInLeft">We're Doing Something</h3>
                         	<h2 class="MainFont2pink animated bounceInUp">EVENTOS * FERIAS * EDIFICACION</h2> 
                        </div>
					 </div>

                </div>

                <div class="carousel-item">

                    <img src="<%=fullpath3%>"  alt="3" width="1400px" height="610px">
                    
                     <div class="container">
                    	<div class="carousel-caption ">
							<h3 class="MainFontPositionRed animated bounceInRight">We Made Something</h3>
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
 
  

  

   <div class="banner">
      
      <div class="smallBanner"> 
            
            <a class="bannerFont"> NEXT FERIAS</a>
            
      <div class="carouselWidth">
        <div id="myCarousel" class="carousel slide carouselZ" data-ride="carousel">

            <!-- Indicators -->

            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->

             <div class="carousel-inner">
                <div class="carousel-item active">
                    <img alt="new ferias1"  src="images/Indoor1.png" width="150px" height="130px">                                       
                </div>

                <div class="carousel-item">
                   <img alt="new ferias2" src="images/Indoor2.png" width="150px" height="130px">      
                </div>
                
                <div class="carousel-item">
                    <img alt="new ferias3" src="images/Indoor3.png" width="150px" height="130px">      
                </div>

            </div>

            <!-- Left and right controls -->

            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">

                <span class="carousel-control-prev-icon"></span>

            </a><a class="carousel-control-next" href="#myCarousel" data-slide="next"> <span class="carousel-control-next-icon"></span></a>

        </div>
      
   
    </div>
      </div>
      
      <div class="smallBanner"> 
            
            <a class="bannerFont"> NEXT EVENTOS</a>
            
      <div class="carouselWidth">
        <div id="myCarousel" class="carousel slide carouselZ" data-ride="carousel">

            <!-- Indicators -->

            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->

             <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="#section-eventos">
                    <img alt="new eventos1" src="images/Outdoor1.png" width="150px" height="130px">
                    </a>                                       
                </div>

                <div class="carousel-item">
                    <a href="#section-eventos">
                   <img alt="new eventos2" href="#section-eventos"  src="images/Outdoor2.png" width="150px" height="130px">
                   </a>      
                </div>
                
                <div class="carousel-item">
                   <a href="#section-eventos">
                    <img alt="new eventos3"  href="#section-eventos" src="images/Indoor4.png" width="150px" height="130px">
                    </a>      
                </div>

            </div>

            <!-- Left and right controls -->

            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">

                <span class="carousel-control-prev-icon"></span>

            </a><a class="carousel-control-next" href="#myCarousel" data-slide="next"> <span class="carousel-control-next-icon"></span></a>

        </div>
      
   
    </div>
      </div>
      
   </div>
   
  
    
    <!-- new section -->
    
       <section class="site-section"  id="section-about">
      	<div id="Aboutcontain2">
        
        <div class="row SiteMargin ">
          <div class="col-md-12 text-center mb-5">
            <h4 class="AboutFont wow bounceInDown" data-wow-duration = "2s">About</h4>
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
                <input type="email" class="form-control" id="exampleFormControlInput1" value="PROYECTOS@IBW.ES">
              </div>
              <div class="form-group">
                <label for="exampleFormControlSelect1">Which one do you need?</label>
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
				  <option>Others</option>
				</select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Fill in if you want to</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
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
