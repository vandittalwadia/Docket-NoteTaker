<%-- 
    Document   : index
    Created on : 19-Oct-2022, 1:32:04 pm
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            .carousel-item {
                height: 400px;
              }

              #spread{
                  margin-bottom: 0px;
              }
        </style>
    </head>
    <body>
       <!--navbar-->
        <%@include file="normalnavbar.jsp"%>
        
        <div class="container-fluid p-0 m-0" >
            <div class = "jumbotron secondary-background text-white" id="spread">
                <div class="container">
                <h1>Welcome To DOCKET..</h1>
                <h2>Acquiring the habit of note-taking is a wonderfully complementary skill to that of listening.</h2>
                <p>The art of note taking is a common habit among the world’s most successful people.

Taking notes can help you to organize your thoughts and record vital information in every area of your business and life.</p>
                <a href="Register.jsp" class ="btn btn-outline-light btn-lg"><span class="fa fa-user"></span> Start for free !</a>
                <a href="Login.jsp" class ="btn btn-outline-light btn-lg"><span class="fa fa-sign-in"></span> Login</a>
                
                </div>
            </div>
            
        </div>
        <!--cards-->
<!--        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
               second row 
                 <div class="row">
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card" >
                    
                    <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class="btn primary-background text-white">Read more..</a>
                    </div>
                     </div>
                    
                </div>
                
                
            </div>
        </div>-->
        <!--carosuel-->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
<!--            <img class="d-block w-100" src="img/blog1.jpg" alt="First slide">-->
            <div class="bg-image" 
                 style="background-image: url('img/caro1.png');
                        height: 50vh;">
            </div>
          </div>
          <div class="carousel-item">
<!--            <img class="d-block w-100" src="img/web2.jpg" alt="Second slide">-->
            <div class="bg-image" 
                 style="background-image: url('img/caro2.png');
                        height: 50vh;">
            </div>
          </div>
          <div class="carousel-item">
<!--            <img class="d-block w-100" src="img/web4.jpg" alt="Third slide">-->
            <div class="bg-image" 
                 style="background-image: url('img/caro3.png');
                        height: 50vh;">
            </div>
          </div>
        </div>
      </div>
        <!--javascripts-->
        
       
        
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="js/myjs.js" type="text/javascript"></script>
        <footer class="background">
        <p class="text-footer">
            Copyright @2022 Vandit Talwadia All rights are reserved.
        </p>
 
    </footer>
    </body>
    
   
</html>
