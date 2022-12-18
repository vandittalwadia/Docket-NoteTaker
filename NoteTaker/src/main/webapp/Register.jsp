<%-- 
    Document   : register
    Created on : 21-Oct-2022, 12:34:41 am
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                padding-top: 10vh;
                background-color: rgba(0,0,0,0.4);
                width:50%;
                font-size:18px;
                border-radius: 10px;
                box-shadow: 2px 15px 15px rgba(0,0,0,0.3);
                color: #fff;
            }
       </style>
    </head>
    <body style="background: url(img/note1.jpg);background-size: cover ; background-attachment: fixed;">
        <!--navbar-->
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
          <a class="nav-link" href="Login.jsp"><span class="fa fa-user-circle-o fa-spin"></span> Already Registered ? </a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
        <center>
     <div class="main">
      <div class="register">
          <font size="6" color = "#ffffff" ><center><span class="fa fa-user"></span> Docket Sign Up Window</center></font>
         <br>
         <form   action= "RegisterServlet"  method = "post"  id="reg-form">

    
    <table class="table">
                          <tr>
                              <td>Enter Username :</td>
                              <td><input type="text" name="txtUser" class="form-control"  placeholder="Enter Username" required></td>
                               
                          </tr>
                           <tr>
                              <td>Enter College Name :</td>
                              <td><input type="text" name="txtclg" class="form-control" placeholder="Enter college Name" ></td>
                               
                          </tr>
                          <tr>
                              <td>Enter Mobile Number :</td>
                              <td><input type="text" name ="txtnum"  class="form-control" placeholder="Enter mobile number" id="txtMobNum"></td>
                               
                          </tr>
                          <tr>
                              <td>Enter Password :</td>
                              <td><input type="password" name ="txtpwd1" class="form-control" placeholder="Enter password" id = "txtPassword" ></td>
                               
                          </tr>
                          <span id="message2"></span>
                          <tr>
                              <td>Confirm Password :</td>
                              <td><input type="password" name ="txtpwd2" class="form-control"  placeholder="re-enter password" id ="txtConfirmPassword" ></td>
                               
                          </tr>
                          <span id="message1"></span>
                          <tr>
                              <td>Enter your Address:</td>
                              <td><textarea rows="2" cols="20" class="form-control" placeholder="Enter your address here" ></textarea>  </td>
                               
                          </tr>
                          
                          <tr>
                              <td>Enter Email-ID:</td>
                              <td><input type="email" name="txtmail" class="form-control" placeholder="Enter your email address" required></td>
                               
                          </tr>
                          <tr>
                              <td>Select Gender :</td>
                              <td>
                                <select name="gen" class="form-control">
                                        
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">other</option>
                                </select>
                              </td>
                               
                          </tr>
                          <tr>
                              <td>Select Medium :</td>
                              <td><select name="lang"  class="form-control">
                                <option value="hindi"> Hindi </option>
                                <option value="english"> English </option>
                                <option value="marathi"> Marathi </option>
                                 </select>
                            
                              </td>
                               
                          </tr>
                          
                      </table>
   

    
    

    <Button type="submit" id="btnSubmit">Submit</Button>
    </form>
      </div><!-- comment -->
    </div>
    </center>
        
          <footer class="background">
        <p class="text-footer">
            Copyright @2022 Vandit Talwadia All rights are reserved.
        </p>
 
    </footer>
        
         <!--javascripts-->
        
       
        
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        
        <!--applying ajax-->
        
        <script>
            $(document).ready(function(){
                console.log("loaded....");
                $('#reg-form').on('submit' , function(event){
                    event.preventDefault();
                    let form = new FormData(this);
                    $.ajax({
                        url:"RegisterServlet",
                        type:"post",
                        data:form,
                        success: function(data , textStatus , jqXHR){
                            //console.log(data);
                            
                            swal("Registered Successfully...We are redirecting to Login Page")
                                                .then((value) => {
                             window.location="Login.jsp";
                            });
                        },
                        error: function(jqXHR , textStatus , errorThrown){
                            //console.log(jqXHR);
                            swal("Something went wrong...")
                            .then((value) => {
                             window.location="Register.jsp";});
                                                
                        },
                        processData:false,
                        contentType: false
                    });
                });
            })
        </script>
        <script>
//            function myfun(){
//                
//                var a = document.getElementById("pwd").value;
//                var b = document.getElementById("cpwd").value;
//                if(a==="" || b===""){
//                    document.getElementById("message1").innerHTML="*Please fill password and confirm password field*";
//                    return false;
//                }
//                if(a!=b){
//                   document.getElementById("message2").innerHTML="*Password not matching!*";
//                   return false;
//                 }               
//                
//            }
//            Form validation...
              $(function () {
                    $("#btnSubmit").click(function () {
                        var password = $("#txtPassword").val();
                        var confirmPassword = $("#txtConfirmPassword").val();
                        var mobile = $("#txtMobNum").val();
                        if(mobile=="" || mobile.length!=10){
                            alert("Please fill correct 10 digit mobile number "); 
                            return false;
                        }
                        if(password=="" || confirmPassword==""){
                            alert("Please Fill Password and confirm Password field");
                            return false;
                        }
                        if (password != confirmPassword) {
                            alert("Passwords do not match.");
                            return false;
                        }
                        return true;
                    });
                });

        </script>
      
    </body>
</html>
