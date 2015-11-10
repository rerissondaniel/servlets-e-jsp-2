<%@page import="dao.VolumeDaoImpl"%>
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
		<a href="#" class="brand-logo right">MyLibrary</a> <a href="#"
			class="brand-logo left"><%=session.getAttribute("username")%></a>
	</div>
	</nav>

	<div class="container">
		<form action="../VolumeServlet" method="POST">
			<label>Título do Volume</label> <input type="text" name="title" /> <br />

			<label>Breve Descrição</label>
			<textarea name="description"> </textarea>
			<br /> <label>Tipo</label> <input type="text" name="type" /> <br />

			<label>Editora</label> <input type="text" name="publisher" /> <br />

			<label>Número de Páginas</label> <input type="text" name="pages" />
			<br /> <label>Ano de Publicação</label> <input type="text"
				name="publication_year" /> <br /> <label>Autores
				(Separados por Ponto e Vírgula ';')</label> <input type="text"
				name="authors" /> <br />

			<button class="blue-grey darken-1 waves-effect waves-light btn-large">Cadastrar</button>
		</form>
	</div>
	<div class="page content">
		<div class="container">
			<form action="../VolumeServlet" method="GET">
				<label>Título do Volume</label> <input type="text" name="title" />
				<br />

				<button
					class="blue-grey darken-1 waves-effect waves-light btn-large"
					type="submit">Remover</button>
			</form>
		</div>
	</div>
	<footer class="page-footer blue-grey lighten-1">
	<div class="footer-copyright">
		<div class="container">ForCode SA © 2015</div>
	</div>
	</footer>
</body>
</html>	