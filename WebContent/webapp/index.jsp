<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css" />
<title>Insert title here</title>
</head>
<body>
	<nav class="blue-grey lighten-1">
	<div class="navbar-fixed">
		<a href="#" class="brand-logo right">MyLibrary</a>
	</div>
	</nav>


	<div class="container center">
		<br/><br/><br/>
		<div class="row">
		<div class="col s6">
			<form action="webapp/login.jsp" method="GET">
				<button class="blue-grey darken-1 waves-effect waves-light btn-large"
					type="submit">Administrador</button>
			</form>
		</div>

		<div class="col s6">
			<form action="webapp/search.jsp" method="GET">
				<button class="blue-grey darken-1 waves-effect waves-light btn-large"
					type="submit">Buscar Volume</button>
			</form>
		</div>
		</div>
		<br/><br/><br/>
	</div>

	<footer class="fixed-bottom page-footer blue-grey lighten-1">
	<div class="footer-copyright">
		<div class="container">
			ForCode SA © 2015 
		</div>
	</div>
	</footer>
</body>
</html>