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
     <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
     <link rel="stylesheet" href="css/style.css">

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
                         
                         <li><a href="<c:url value="/ProfilBuyer"/>" class="smoothScroll">Back To Profil</a></li>
                         <li ><a href="<c:url value="/Login"/>">Log out</a></li>
                    </ul>
               </div>

        
     </section>


     <!-- HOME -->
     <section id="home">
          <div class="row">

                    <div class="owl-carousel owl-theme home-slider">
                         
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Add Your Project</h2>
                        
                        <form method="POST" class="register-form" action="addproject">
                            <div class="form-group">
                                <label for="titre"><i class="zmdi zmdi-text-format"></i></label>
                                <input type="text" name="titre"  placeholder="Project Title"/>
                            </div>
                            <div class="form-group">
                                <label for="Budget"><i class="zmdi zmdi-money"></i></label>
                                <input type="number" name="Budget"  placeholder="Budget "/>
                            </div>
         
                            <div class="form-group">
                                <label for="desc"><i class="zmdi zmdi-comment-alt-text"></i></label>
                                <input type="text" name="desc" placeholder="Description "/>
                            </div>
                            <div class="form-group">
                                <label for="Username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="Username" placeholder="Username"/>
                            </div>
                            
                            <div class="form-group">
                                <label for="cat"><i class="zmdi zmdi-text-format"></i></label>
                                <input type="text" name="cat" placeholder="Categorie"/>
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup"  class="form-submit" style="background: #29ca8e;" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        
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