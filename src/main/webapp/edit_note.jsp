<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Edit Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h3><img  style="width: 30px" src="img/edit.png"> Edit your note </h3>
		
		<%
			int note_id=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getSessionFactory().openSession();
			Note note=s.get(Note.class, note_id);
			
			s.close();
		%>
		
		<div class="container">

		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" type="hidden" name="note_id"/>
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input type="text"
					class="form-control" id="title"
					name="title"
					value="<%=note.getTitle()%>"
					aria-describedby="emailHelp" placeholder="Enter Title here" required="required"> 
			</div>
			<br>
			<br>
			<div class="form-group">
				<label for="content">Note Content</label><br>
				<textarea id="content" placeholder="Enter Content Here" 
				name="content"
				
				class="form-control" style="height: 200px" required="required"><%=note.getContent()%></textarea>
			</div>
			<div class="form-check">
				
				
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</form>

	</div>
	</div>
</body>
</html>