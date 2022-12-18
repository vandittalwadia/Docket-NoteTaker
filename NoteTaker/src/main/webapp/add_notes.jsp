<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
User user = (User)session.getAttribute("currentUser");
if(user==null){
    response.sendRedirect("login.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addnotes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body style="background: url(img/note3.jpg);background-size: cover ; background-attachment: fixed; ">
  <div class = "container">
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Docket</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="add_notes.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_notes.jsp">Add Note</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="show_note.jsp">Show Notes</a>
      </li>
    </ul>
    <ul class="navbar-nav mr-right">
          
          <li class="nav-item">
          <a class="nav-link" href="#!"  ><span class="fa fa-user-plus"></span> <%="Welcome, "+user.getName()%></a>
      </li>
          <li class="nav-item">
          <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span> Logout </a>
      </li>
      </ul>
   
  </div>
</nav>
     <br>
     <br>
     <br>
     <br>
     <br>
     <h1>Please Fill Your Notes Details ...</h1>
     <br>
     <!-- forms -->
     <form action="SaveNoteServlet" method = "Post">
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input type="text" name ="txttitle" class="form-control" id="mytitle" placeholder="Enter Title">
		    
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea id ="mycontent" name="txtcontent"  class="form-control" placeholder="Enter your content.."></textarea>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Submit</button>
    </form>
     
  </div>
</body>
</html>