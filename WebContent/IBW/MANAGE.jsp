<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
   <script type="text/javascript" src="css/jquery-3.2.1.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    <script>
      $("#ScrollImg1").attr("src", "images/Outdoor1.png");

   </script>
    
</head>

<body>
<%-- <c:set var ="" value="<%=%>"/> --%>
      <h1 class="manageFont"> Scroll Image </h1>
          <div class="EmailContainerManage">  
            <form action="INDEX.jsp" method="post" enctype="multipart/form-data">
            
              <div class="form-group">
                <label for="Scroll Image1">Select Scroll Image 1</label>
                <input type="file" class="form-control"  name="fileName1" >
              </div>
              
              <div class="form-group">
                <label for="Scroll Image1">Select Scroll Image 2</label>
                <input type="file" class="form-control"  name="fileName2">
              </div>
              
              <div class="form-group">
                <label for="Scroll Image1">Select Scroll Image 3</label>
                <input type="file" class="form-control" name="fileName3">
                
              </div>
               <input type="hidden" name="index" value='scroll'>
             <c:url value="/IBW/INDEX.jsp" var="test">
                <c:param name="index" value="scroll"/>
             </c:url>
             
              <button type="submit" class="btn badge-danger" formaction="${test}">
              Change
              </button>>
              
             
              <button type="reset" class="btn badge-danger">Reset</button>
            </form>
            
          </div>
          <br>
          <br>
    


      <h1 class="manageFont"> Next Eventos </h1>
          <div class="EmailContainerManage2">  
            <form action="INDEX.jsp" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="Eventos Image1">Select Eventos Image 1</label>
                <input type="file" class="form-control" name="eventos1" >
               
              </div>
              
              <div class="form-group">
                <label for="Eventos Image2">Select Eventos Image 2</label>
                <input type="file" class="form-control" name="eventos2" >
               
              </div>
              
              <div class="form-group">
                <label for="Eventos Image3">Select Eventos Image 3</label>
                <input type="file" class="form-control" name="eventos3" >
              
              </div>
               
            <c:url value="/IBW/INDEX.jsp" var="test3">
                 <c:param name="index" value="Eventos"/>
               </c:url>
             
              
              <button type="submit" class="btn badge-danger" formaction="${test3}">
              Change
              </button>>
              
              <button type="reset" class="btn badge-danger">Reset</button>
            </form>
          </div>
        <br>
          <br>
          
          <h1 class="manageFont"> Next Ferias </h1>
          <div class="EmailContainerManage2">  
            <form action="INDEX.jsp" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="Ferias Image1">Select Ferias Image 1</label>
                <input type="file" class="form-control" name="ferias1" >
               
              </div>
              
              <div class="form-group">
                <label for="Ferias Image2">Select Ferias Image 2</label>
                <input type="file" class="form-control" name="ferias2">
               

              </div>
              
              <div class="form-group">
                <label for="Ferias Image3">Select Ferias Image 3</label>
                <input type="file" class="form-control"  name="ferias3">
               
              </div>
              
              
               <c:url value="/IBW/INDEX.jsp" var="test2">
                <c:param name="index" value="Ferias"/>
               </c:url>
             
              
              <button type="submit" class="btn badge-danger" formaction="${test2}">
              Change
              </button>
              
              
              <button type="reset" class="btn badge-danger">Reset</button>
            </form>
          </div>
          <br>
          <br>
          
          <h1 class="centerAlign"><a href="INDEX.jsp"><button type="button" class="btn badge-info">Go to Main Page</button></a></h1>
          



</body>
</html>