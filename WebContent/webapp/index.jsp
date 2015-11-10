<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/materialize.css" />

		<title>My Library</title>
		
		<% session.removeAttribute("username"); %>
		
		<script language = "javascript">
			<%= request.getAttribute("error") == null ? "" : "window.alert(\"" + ((String)request.getAttribute("error")) + "\");" %>
			<%= request.getAttribute("error-search") == null ? "" : "window.alert(\"" + ((String)request.getAttribute("error-search")) + "\");"%>
		</script>
		
	</head>
	
	<body>
		<!-- Nav -->
		<nav class="blue-grey lighten-1">
			<div class="navbar-fixed">
				<a href="#" class="brand-logo right">MyLibrary</a>
			</div>
		</nav>

		<!-- Content -->
		<div class="container center">
			<br /> <br /> <br />
			
			<div class="row">
				<div class="col s6">
					<a href="#form_login" class="modal-trigger blue-grey darken-1 waves-effect waves-light btn-large">
						Administrador
					</a>
				</div>
	
				<div class="col s6">
					<a href="#form_search" class="modal-trigger blue-grey darken-1 waves-effect waves-light btn-large">
						Buscar Volume
					</a>
				</div>
			</div>
			
			<!-- Modal Form Login -->
			<div id="form_login" class="modal">
				<div class="modal-content">
					<h4>Login</h4>		
					<div class="row">
						<form class="col s12" action="${pageContext.request.contextPath}/LoginServlet" method="POST">
							<div class="input-field col s12">
								<label>Nome</label> 
								<input class="validate" type="text" name="username" /> <br />
							</div> 
							
							<div class="input-field col s12">
								<label>Senha</label>
								<input class="validate" type="password" name="password" /> <br />
							</div>
				
							<div class="right-align">
								<button class="blue-grey darken-1 waves-effect waves-light btn-large"
									type="submit">Logar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			
			<!-- Modal Form Search -->
			<div id="form_search" class="modal">
				<div class="modal-content">
					<h4>Buscar Volume</h4>		
					<div class="row">
						<form class="col s12" action="${pageContext.request.contextPath}/SearchServlet" method="GET">
							<div class="input-field col s12">
								<label>Título do Volume</label> 
								<input class="validate" type="text" name="title" /> <br />
							</div> 
				
							<div class="right-align">
								<button class="blue-grey darken-1 waves-effect waves-light btn-large"
									type="submit">Buscar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			
		</div>
	
		<!-- Footer -->
		<footer class="fixed-bottom page-footer blue-grey lighten-1">
			<div class="footer-copyright">
				<div class="container">ForCode SA © 2015</div>
			</div>
		</footer>
		
		<!--  Scripts-->
		<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
		<script> 
			$(document).ready(function(){
		   		 $('.modal-trigger').leanModal();
		  	});
		</script>
 
	</body>
</html>