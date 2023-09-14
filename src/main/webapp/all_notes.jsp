<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>All Notes</title>
</head>
<body>
 <div class="container">
 <%@include file="navbar.jsp"%>
 <br>
<h3> All Notes</h3>
 </div>
 
<div class="container">
	<%
		Session s=FactoryProvider.getSessionFactory().openSession();
		Query query=s.createQuery("from Note");
			List<Note> list= query.list();
			for(Note note:list){
	%>
		<div class="card mt-3">
  
  <div class="card-body px-5">
  	<img class="card-img-top m-4 mx-auto" src="img/pencil.png" style="max-width: 40px" alt="Card image cap">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p class="card-text"><b class="text-primary"><%= note.getAddedDate() %></b></p>
    	<div class="container text-center mt-2">
    		 <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
     		 <a href="edit_note.jsp?note_id=<%=note.getId() %>	" class="btn btn-primary">Update</a>
    	</div>
  </div>
</div>
			
			<% 	
			}
			s.close();
			%>
		
	
</div>
</body>
</html>