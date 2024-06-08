<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width'>
<title></title>
<link href="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/style.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/3.4.0/jquery.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>

</style>
</head>
<body>

<div class="container">


	<div style="width: 40%;height:80%; margin: auto;text-align: center">
	
		<form id="formLogin" action="/mycard-api/login" method="post">
	
			<div class="form-group" style="padding-top: 100px;padding-bottom: 60px">
				<div class="col-sm">
					<img src="/images/mycard-web.png" width="40"> MyCard templates !!!!
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm">
					<c:if test="${param.error != null}">
						<div class="alert alert-danger">Utilizador e/ou Senha inválidos!</div>
					</c:if>
					
				</div>
			</div>
				
			<div class="form-group">
				<div class="col-sm">
				<input class="form-control" type="text" id="email" name="username" placeholder="Endereço email">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm">
				<input class="form-control" type="password" name="password" placeholder="Palavra pass">
				</div>
			</div>
	
			<div class="form-group">
				<div class="col-sm">
				<button class="btn btn-primary" style="width: 150px" onclick="return login()">Login</button>
				
				</div>
			</div>

			
		</form>
		
		<div class="form-group">
			<div class="col-sm">
			<button class="btn btn-primary" style="width: 150px" onclick="register()">Registar</button>
			</div>
		</div>
			
		
	</div>

</div>

<script>
	function login(){
		//debugger;
		//location.href="/mycard-api/"
		$("#formLogin").submit();
		//return true;
	}

	function register(){
		window.location.href='/mycard-api/register';
	}
	
	$("#email").focus();
	
</script>


</body>
</html>
