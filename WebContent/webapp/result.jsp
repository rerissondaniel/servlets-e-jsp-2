<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="core.Volume" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
    <table>
    	<tr>
    		<td>Título do Volume</td>
    		<td><%= ((Volume)request.getAttribute("volume")).getTitle() %></td>
    	</tr>
    	
    	<tr>
    		<td>Breve Descrição</td>
    		<td>${volume.getDescription()}</td>
    	</tr>
    	
    	<tr>
    		<td>Tipo</td>
    		<td>${volume.getType()}</td>
    	</tr>
    	
    	<tr>
    		<td>Editora</td>
    		<td>${volume.getPublisher()}</td>
    	</tr>
    	
    	<tr>
    		<td>Ano de Publicação</td>
    		<td>${volume.getPublicationYear()}</td>
    	</tr>
    	
    	<tr>
    		<td>Número de Páginas</td>
    		<td>${volume.getNumberOfPages()}</td>
    	</tr>
    	
    	<tr>
    		<td>Autores</td>
    		<td>
    			<c:forEach items= "${volume.getAuthors()}" var="author">  
				    ${author}<br>
				</c:forEach>
			</td>
    	</tr>
    	
    </table>
</body>
</html>