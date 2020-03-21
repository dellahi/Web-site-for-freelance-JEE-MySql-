<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Projects For Frelance</title>
  
   <title>Freelance</title>
<!-- 

Known Template 

https://templatemo.com/tm-516-known

-->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
      <link rel="stylesheet" href="css/style.css">

     <!-- MAIN CSS-->
     
  
  
  
  
  
  
  
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
     <link rel="stylesheet" href="css/style1.css">

  
</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          
               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="#" class="navbar-brand">Freelance</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    

                    <ul class="nav navbar-nav navbar-right" style="    margin-right: 40px;">
                         
                         <li><a href="<c:url value="/buyer"/>" class="smoothScroll">Back To Profil</a></li>
                         <li ><a href="<c:url value="/Login"/>">Log out</a></li>
                    </ul>
               </div>

        
     </section>
     
     
     
     
     
  <section>
  <!--for demo wrap-->
   <br/>
      <br/>
      <br/>
     <br/>
  <h1>Applicatons </h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Freelancer</th>
          <th>Project Title</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <c:forEach var="postuler" items="${Postes}">
          <tr>
          <td><c:out value="${ postuler.username}" /></td>
          <td>  <c:out value=" ${ postuler.titre}" /></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</section>


<!-- follow me template -->

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
