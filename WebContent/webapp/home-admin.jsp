<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/materialize.css" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<title>My Library</title>
	</head>
	
	<body>
		<!-- Nav -->
		<nav class="blue-grey lighten-1">
			<div class="navbar-fixed">
				<div class="row">
					<div class="col s6">
						<a href="#" class="brand-logo left">MyLibrary</a>
					</div>						
					<div class="right-align col s12">
						<form action="${pageContext.request.contextPath}/AdminServlet" method="GET">
							<button class="blue-grey darken-1 waves-effect waves-light btn-large"
									type="submit"><i class="large material-icons"> power_settings_new</i></button>
						</form>
					</div>
				</div>
			</div>
		</nav>

		<!-- Content -->
		<div class="container center">
			<br /> <br /> <br />
			
			<div class="row">
				<div class="col s6">
					<a href="#form_new_volume" class="modal-trigger blue-grey darken-1 waves-effect waves-light btn-large">
						Cadastrar Volume
					</a>
				</div>
	
				<div class="col s6">
					<a href="#form_remove_volume" class="modal-trigger blue-grey darken-1 waves-effect waves-light btn-large">
						Remover Volume
					</a>
				</div>
			</div>
			
			<!-- Modal Form New Volume -->
			<div id="form_new_volume" class="modal">
				<div class="modal-content">
					<h4>Cadastrar Volume</h4>		
					<div class="row">
						<form class="col s12" action="${pageContext.request.contextPath}/VolumeServlet" method="POST">
							<div class="row">
								<div class="input-field col s4">
									<label>Título do Volume</label> 
									<input type="text" name="title" />
								</div>
								
								<div class="input-field col s4">
									<label>Editora</label> 
									<input type="text" name="publisher" />
								</div>
								
								<div class="input-field col s4">
									<label>Tipo</label> 
									<input type="text" name="type" />
								</div> 
							</div>
							
							<div class="row">
								<div class="input-field col s9">
									<label>Breve Descrição</label>
									<input type="text" name="description" />
								</div>
								
								<div class="input-field col s3">
									<label>Ano de Publicação</label> 
									<input type="text" name="publication_year" />
								</div>
							</div>
							
							<div class="row">																
								<div class="input-field col s6">
									<label>Autores (Separados por Ponto e Vírgula ";")</label>
									<input type="text" name="authors" />
								</div>
								
								<div class="input-field col s3">
									<label>Número de Páginas</label> 
									<input type="text" name="pages" />
								</div> 
								
								<div class="right-align col s3">
									<button class="blue-grey darken-1 waves-effect waves-light btn-large"
										type="submit">Cadastrar</button>
								</div>
							</div>
							
						</form>
					</div>
				</div>
			</div>
			
			<!-- Modal Form Remove Volume -->
			<div id="form_remove_volume" class="modal">
				<div class="modal-content">
					<h4>Remover Volume</h4>		
					<div class="row">
						<form class="col s12" action="${pageContext.request.contextPath}/VolumeServlet" method="GET">
							<div class="row">
								<div class="input-field col s12">
									<label>Título do Volume</label> 
									<input class="validate" type="text" name="title" /> <br />
								</div> 
							</div>
							
							<div class="row">
								<div class="right-align col s12">
									<button class="blue-grey darken-1 waves-effect waves-light btn-large"
										type="submit">Remover Volume</button>
								</div>
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