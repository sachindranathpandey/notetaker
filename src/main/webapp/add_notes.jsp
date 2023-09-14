<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<div class="container text-center">
		<h2 style="color:green"><img  style="width: 30px" src="img/addnote.png">  Add Note</h2>
	</div>
	<br>
	<div class="container">

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input type="text"
					class="form-control" id="title"
					name="title"
					aria-describedby="emailHelp" placeholder="Enter Title here" required="required"> 
			</div>
			<br>
			<br>
			<div class="form-group">
				<label for="content">Note Content</label><br>
				<textarea id="content" placeholder="Enter Content Here" 
				name="content"
				class="form-control" style="height: 200px" required="required"></textarea>
			</div>
			<div class="form-check">
				
				
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
				
			</div>
		</form>

	</div>
</body>
</html>