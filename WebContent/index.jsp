<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.produto.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>P�gina inicial - Crud Vari�vel</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	</head>
	<body>
	
		<div class="container border">
			<!-- Titulo da P�gina -->
			<div class="row justify-content-md-center">
				<div class="col col-lg-4">
					<h1 class="display-4">CRUD Vari�vel</h1>
				</div>
			</div>
			
			<div class="row">
				<div class="col col-lg-12">
					<a href="produto.jsp" class="btn btn-primary">Cadastro de Produtos</a>
				</div>
			</div>
			
			<div class="row">
				<div class="col col-lg-12">
					<hr/>
				</div>
			</div>
			
			
			<!-- Menu da P�gina -->
			
			
			<!--  Conte�do da P�gina -->
			<div class="row">
				<div class="col col-lg-12">
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th>Descri��o</th>
								<th>Marca</th>
								<th>Pre�o de custo</th>
								<th>Pre�o de venda</th>
								<th>Saldo de estoque</th>
							</tr>
						</thead>
							<!--  Conte�do da Tabela -->
							<% ProdutoDao prodDao = new ProdutoDao(); %>
							<%= prodDao.toTable() %>
							
					</table>
				</div>
			</div>
		</div>
		
		<!-- Script BootStrap -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>