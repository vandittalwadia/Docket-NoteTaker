<%@page import="com.entities.User"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.factoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>

<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>allnotes</title>
<%@include file="all_js_css.jsp"%>
<style type="text/css">
.card-img-top {
	width: 100%;
	height: 15vw;
	object-fit: cover;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Docket</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="add_notes.jsp">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="add_notes.jsp">Add
							Note</a></li>

					<li class="nav-item"><a class="nav-link " href="show_note.jsp">Show
							Notes</a></li>
				</ul>
				<ul class="navbar-nav mr-right">

					<li class="nav-item"><a class="nav-link" href="#!"><span
							class="fa fa-user-plus"></span> <%="Welcome, " + user.getName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
							class="fa fa-user-plus"></span> Logout </a></li>
				</ul>

			</div>
		</nav>
		<br>
		<h1>Your Notes ...</h1>

		<div class="row">

			<div class="col-12">
				<%
				Session s = factoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-4">
					<img class="card-img-top " src="img/note7.jpg" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="card-text">
							<b style="color: blue;"><%=note.getAddedDate().toLocaleString()%></b>
						</p>
						<div class="container text-center mt-2">
							<a href="noteEdit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a> <a
								href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>

						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>

			</div>
		</div>
		<br>


	</div>
</body>
</html>