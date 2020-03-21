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
     <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
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
                         <li><a href="<c:url value="/Home"/>" >Home</a></li>
                         
                         <li class="active"><a href="<c:url value="/Connexion"/>" class="smoothScroll">Log in</a></li>
                         <li><a href="<c:url value="/SignUp"/>">Sign up as Buyer</a></li>
                         <li><a href="<c:url value="/Inscription"/>">Sign up as Freelancer</a></li>
                    </ul>
               </div>

          
     </section>


     <!-- HOME -->
     <section id="home">
          
                   
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Log in</h2>
                        <form method="POST" action = "Login" class="register-form" id="login-form">
                             <div>
                            <span class="erreur"> ${erreur}</span>
                            </div>
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="Username" id="Username" placeholder="Your Name"required=""/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="motdepasse" id="motdepasse" placeholder="Password"required=""/>
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" style="background: #29ca8e;" value="Log in"/>
                            </div>
                     
                        </form>
                       
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