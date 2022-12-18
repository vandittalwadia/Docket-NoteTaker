<%-- 
    Document   : login
    Created on : 20-Oct-2022, 11:53:01 pm
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <style type="text/css">
            form {font-weight:900;
             color: red;}
            button{
             background-color: #04AA6D;
            border: none;
            color: white;
             padding: 16px 32px;
             text-decoration: none;
              margin: 4px 2px;
            
            }
            div.register{
                padding-top: 20vh;
                background-color: rgba(0,0,0,0.4);
                width:50%;
                font-size:18px;
                border-radius: 10px;
                box-shadow: 2px 15px 15px rgba(0,0,0,0.3);
                color: #fff;
            }
       </style>
    </head>
    <body style="background: url(img/note2.jpg);background-size: cover ; background-attachment: fixed; ">
        
         
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#"> <span class="fa fa-address-book"></span> Docket</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
<!--      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Java Programming</a>
          <a class="dropdown-item" href="#">Python Programming</a>
          <a class="dropdown-item" href="#">C++ Programming</a>
          <a class="dropdown-item" href="#">R Programming</a>
          <a class="dropdown-item" href="#">Javascript Programming</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
     
      <li class="nav-item">
          <a class="nav-link" href="Register.jsp"><span class="fa fa-user-plus"></span> New User ?</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
         <center>
     <div class="main" >
      <div class="register" text-center>
          <font size="6" color = "#ffffff" ><center> <span class="fa fa-sign-in"></span>  Login Window </center></font>
         <br>
         <form   action= "LoginServlet"  method = "post"  >
<!--       Enter Username  <input type="text" name="txtUser"  placeholder="Enter username" /><br><br>
    
    Enter Mobile number <input type="text" name ="txtnum"  placeholder="Enter mobile number" /> <br><br>
    Enter Password <input type="text" name ="txtpwd1" placeholder="Enter password" required/> <br><br>
   
    Enter Email ID <input type="text" name="txtmail" placeholder="Enter your email address" required/><br><br>-->
    <table class="table">
                          <tr>
                              <td>Enter Username :</td>
                              <td><input type="text" name="txtUser"  class="form-control" placeholder="Enter username" ></td>
                               
                          </tr>
                           <tr>
                              <td>Enter Mobile Number :</td>
                              <td><input type="text" name ="txtnum" class="form-control" placeholder="Enter mobile number" ></td>
                               
                          </tr>
                          <tr>
                              <td>Enter Password</td>
                              <td><input type="password" name ="txtpwd1" class="form-control" placeholder="Enter password" required/></td>
                               
                          </tr>
                          <tr>
                              <td>Enter Email-ID</td>
                              <td><input type="text" name="txtmail"  class="form-control" placeholder="Enter your email address" required></td>
                               
                          </tr>
                          
                      </table>
    <br>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form> 
      </div><!-- comment -->
    </div>
    </center>
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
