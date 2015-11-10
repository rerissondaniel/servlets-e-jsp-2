<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="core.Volume"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<div class="container">
		<br />
		<div class="border-grey">
			<table class="bordered striped">
				<tr>
					<td class="bold">Título do Volume</td>
					<td><%=((Volume) request.getAttribute("volume")).getTitle()%></td>
				</tr>

				<tr>
					<td class="bold">Breve Descrição</td>
					<td>${volume.getDescription()}</td>
				</tr>

				<tr>
					<td class="bold">Tipo</td>
					<td>${volume.getType()}</td>
				</tr>

				<tr>
					<td class="bold">Editora</td>
					<td>${volume.getPublisher()}</td>
				</tr>

				<tr>
					<td class="bold">Ano de Publicação</td>
					<td>${volume.getPublicationYear()}</td>
				</tr>

				<tr>
					<td class="bold">Número de Páginas</td>
					<td>${volume.getNumberOfPages()}</td>
				</tr>

				<tr>
					<td class="bold">Autores</td>
					<td><c:forEach items="${volume.getAuthors()}" var="author">  
				    ${author}<br>
						</c:forEach></td>
				</tr>
			</table>
		</div>
		<br />
		<div class="right-align">
			<a class="blue-grey darken-1 waves-effect waves-light btn-large"
				href="webapp/index.jsp">Voltar</a>
		</div>
	</div>

	<footer class="fixed-bottom page-footer blue-grey lighten-1">
	<div class="footer-copyright">
		<div class="container">ForCode SA © 2015</div>
	</div>
	</footer>
</body>
</html>