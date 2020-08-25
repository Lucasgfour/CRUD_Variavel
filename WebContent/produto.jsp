<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastro de Novo Produto</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	</head>
	<body>
		
		<div class="container border">
			<!-- Titulo da Página -->
			<div class="row justify-content-md-center">
				<div class="col col-lg-6">
					<h1 class="display-4">Cadastro de Produto</h1>
				</div>
			</div>
			<div class="row">
				<div class="col col-lg-12">
					<hr/>
				</div>
			</div>
			
			<form action="salvar.jsp" method="post">
			<!--  Conteúdo da Página -->
				<div class="row">
					<div class="col col-md-12">
						<!-- Descrição -->
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">Descrição</span>
						  </div>
						  <input type="text" name="descricao" class="form-control" placeholder="Descrição do Produto" aria-label="Descrição do Produto" aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-7">
						<!-- Marca -->
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">Marca</span>
						  </div>
						  <input type="text" name="marca" class="form-control" placeholder="Marca" aria-label="Marca" aria-describedby="basic-addon1">
						</div>
					</div>
					
					<div class="col-md-5">
						<!-- Estoque -->
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">Estoque</span>
						  </div>
						  <input type="text" name="saldo_estoque" class="form-control" placeholder="Saldo de Estoque" aria-label="Saldo de Estoque" aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<!-- Preço de Custo -->
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">Preço de Custo (R$)</span>
						  </div>
						  <input type="text" name="preco_custo" class="form-control" placeholder="0.00" aria-label="0.00" aria-describedby="basic-addon1">
						</div>
					</div>
				
					<div class="col-md-6">
						<!-- Preço de Venda -->
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="basic-addon1">Preço de Venda (R$)</span>
						  </div>
						  <input type="text" name="preco_venda" class="form-control" placeholder="0.00" aria-label="0.00" aria-describedby="basic-addon1">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-md-4 text-right">
						<a href="index.jsp" class="btn btn-danger">Cancelar</a>
						<input type="submit" class="btn btn-primary" value="Cadastrar"/>
					</div>
				</div>
				<div class="row"><label></label></div>
			</form>	
				
		</div>
		
		
		<!-- Script BootStrap -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>