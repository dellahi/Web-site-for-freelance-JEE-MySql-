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
          <div class="container">

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
                    
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="#top" class="smoothScroll">Home</a></li>
                         <li><a href="#courses" class="smoothScroll">About</a></li>
                         <li><a href="#about" class="smoothScroll">Log in</a></li>
                         <li><a href="<c:url value="/SignUp"/>">Sign up as Buyer</a></li>
                         <li><a href="<c:url value="/Inscription"/>">Sign up as Freelancer</a></li>
                    </ul>
               </div>
               

          </div>
     </section>


     <!-- HOME -->
     <section id="home">
          <div class="row">

                    <div class="owl-carousel owl-theme home-slider">
                         <div class="item item-first">
                              <div class="caption">
                                   <div class="container">
                                        <div class="col-md-6 col-sm-12">
                                             <h1>Live your work dream</h1>
                                             <h3>Our community of expert freelancers gives you the power to find the right
                                             person for any project in minutes.</h3>
                                             <a href="<c:url value="/Login"/>" class="section-btn btn btn-default smoothScroll">Get started</a>
                                        </div>
                                   </div> 
                              </div>
                         </div>
                    </div> 
           </div>
     </section>


     <!-- FEATURE -->
     <section id="feature">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                              <span>01</span>
                              <h3>Post a job</h3>
                              <p>Tell us about your project.We will connect you with top talent around the world.</p>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                              <span>02</span>
                              <h3>Freelancers come to you</h3>
                              <p>Get qualified proposals within 24 hours.Interview favorites and hire the best.</p>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="feature-thumb">
                              <span>03</span>
                              <h3>Collaborate easily</h3>
                              <p>Share files and track projec from your desktop.</p>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- ABOUT -->
    


     <!-- TEAM -->
     <section id="courses">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>Find the level of service that works for you</h2>
                         </div>

                    

                              

                              <div class="col-md-4 col-sm-4">
                                   <div class="item">
                                        <div class="courses-thumb">
                                             <div class="courses-top">
                                                  <div class="courses-image">
                                                       <img src="images/courses-image3.jpg" class="img-responsive" alt="">
                                                  </div>
                                                  
                                             </div>

                                             <div class="courses-detail">
                                                  <h3><a href="#">Lorem ipsum dolor</a></h3>
                                                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                             </div>

                                             
                                        </div>
                                   </div>
                              </div>

                              

                         </div>

               </div>
          </div>
     
</section>

     <!-- Courses -->
     <section id="about">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <div class="about-info">
                              <h2>Find an expert for anything</h2>

                              
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint ipsa voluptatibus.</p>
                                  
                         </div>
                    </div>

                    <div class="col-md-offset-1 col-md-4 col-sm-12">
                         <div class="entry-form">
                              <form method= "post" action="Login">
                                   <h2>LOG IN</h2>
                                   <input type="text" name="Username" class="form-control" placeholder="Your Username" required="">

                                   <input type="password" name="motdepasse" class="form-control" placeholder="Your password" required="">
                                   

                                   <button class="submit-btn form-control" id="form-submit">Log in</button>
                              </form>
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