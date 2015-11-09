<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../SignUpServlet" method="POST">
		<label>Nome</label> 
		<input type="text" name="username" /> <br /> 
		
		<label>Senha</label>
		<input type="password" name="password" /> <br />

		<label>Redigite a Senha</label>
		<input type="password" name="retype-password" /> <br />

		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>