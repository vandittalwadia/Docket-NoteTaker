<%@page import="com.entities.User"%>
<%
User user = (User)session.getAttribute("currentUser");
if(user==null){
    response.sendRedirect("login.jsp");
}

%>
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
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>