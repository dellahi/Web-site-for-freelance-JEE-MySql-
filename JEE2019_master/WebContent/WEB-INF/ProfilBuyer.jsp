<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

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
    

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/templatemo-style.css">
     
    

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
                         <li class="active"><a href= >Profil</a></li>
                         
                         <!-- MENU LINKS<li><a href= class="smoothScroll">Post Project</a></li>-->
                         <li ><a href= "<c:url value="/showapply"/>">Applications</a></li>
                         <li ><a href= "<c:url value="/addproject"/>">Add New Project</a></li>
                         <li ><a href="<c:url value="/Login"/>">Log out</a></li>
                    </ul>
               </div>

         
     </section>


     <!-- HOME -->
     <section id="home">
         

                    
                       <section id="team">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>WELCOME <small><output for="t_ht t_tva" name="name" form="tva_form"></output></small></h2>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6" >
                         <div class="team-thumb">
                              <div class="team-image">
                                   <img src="images/author-image1.jpg" class="img-responsive" alt="">
                              </div>
                              
                                   
                                   <input type="submit" class="form-control" name="send message" style=" background-color: #29ca8e;" value="Edit Profil">
                           
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6" style="    width: 870px;     height: 506px;">
                         <div class="team-thumb">
                              
                              <div class="team-info">
                                <div class="h4 mt-0 title">Basic Information:</div>
            <div class="row">
              <div class="col-sm-4"><strong class="text-uppercase">Age:</strong></div>
              <div class="col-sm-8">24</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
              <div class="col-sm-8">anthony@company.com</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Phone:</strong></div>
              <div class="col-sm-8">+1718-111-0011</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Address:</strong></div>
              <div class="col-sm-8">140, City Center, New York, U.S.A</div>
            </div>
            <div class="row mt-3">
              <div class="col-sm-4"><strong class="text-uppercase">Language:</strong></div>
              <div class="col-sm-8">English, German, French</div>
            </div>
                                   
                              </div>
                              
                         </div>
                    </div>

                    

               </div>
          </div>
     </section>

          


   


     


        


     


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>