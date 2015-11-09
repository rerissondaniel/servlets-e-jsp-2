<%@page import="dao.VolumeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bem-Vindo</h1>
	<h3><%= session.getAttribute("username") %></h3>
	
	<form action="../VolumeServlet" method="POST">
		<label>Título do Volume</label> 
		<input type="text" name="title" /> <br /> 
		
		<label>Breve Descrição</label> 
		<textarea name="description" > </textarea> <br /> 
		
		<label>Tipo</label> 
		<input type="text" name="type" /> <br /> 
			
		<label>Editora</label> 
		<input type="text" name="publisher" /> <br /> 
		
		<label>Número de Páginas</label> 
		<input type="text" name="pages" /> <br /> 
	
		<label>Ano de Publicação</label> 
		<input type="text" name="publication_year" /> <br /> 	
		
		<label>Autores (Separados por Ponto e Vírgula ';')</label>
		<input type="text" name="authors" /> <br /> 
		
		<button type="submit">Cadastrar</button>
	</form>
	
	<form action="../VolumeServlet" method="GET">
		<label>Título do Volume</label> 
		
		<input type="text" name="title" /> <br /> 
	
		<button type="submit">Remover</button>
	</form>
</body>
</html>