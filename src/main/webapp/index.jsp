<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp"%>
<title>Note Taker: Home </title>
</head>
<body>

	<div class="container text-center">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="card">
			<img alt="imgnote" src="img/pencil.png" class="img-fluid mx-auto" style="max-width: 200px">
		<h1 class="text-primary text-uppercase mt-3">Your Personal Notebook</h1>
		<br>
			<div class="container text-primary">
				<button class="btn btn-outline-primary text-center mb-3"><a href="add_notes.jsp">Add Notes</a></button>
			</div>
		</div>
	</div>
</body>
</html>
