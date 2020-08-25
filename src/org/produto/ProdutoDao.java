package org.produto;

import java.util.LinkedList;

public class ProdutoDao {
	private static LinkedList<Produto> lista = new LinkedList<Produto>();
	
	public void inserir(Produto produto) {
		lista.add(produto);
	}
	
	public String toTable() {
		String saida = "";
		for(Produto prod : lista) {
			saida = saida + prod.toTable();
		}
		return saida;
	}
	
	public LinkedList<Produto> listar() {
		return lista;
	}
}
