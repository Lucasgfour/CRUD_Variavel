<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.produto.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Salvando Produto ...</title>
	</head>
	<body>
		<%
			Produto produto = new Produto();
			ProdutoDao prodDao = new ProdutoDao();
			
			produto.setDescricao(request.getParameter("descricao"));
			produto.setMarca(request.getParameter("marca"));
			produto.setSaldo_estoque(Integer.parseInt(request.getParameter("saldo_estoque")));
			produto.setPreco_custo(Double.parseDouble(request.getParameter("preco_custo")));
			produto.setPreco_venda(Double.parseDouble(request.getParameter("preco_venda")));
			
			prodDao.inserir(produto);
		
			response.sendRedirect("index.jsp");
		
		%>
	</body>
</html>