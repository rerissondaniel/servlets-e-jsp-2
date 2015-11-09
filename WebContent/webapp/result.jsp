<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="volume" class="bean.SearchServlet"/>
 
    <table>
    	<tr>
    		<td>Título do Volume</td>
    		<td><jsp:getProperty name="volume" property="volume" /></td>
    	</tr>
    
    </table>
</body>
</html>