package org.produto;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class ProdutoDao {
	
	public void inserir(Produto p) {
		Conexao con = new Conexao();
		try {
			String sql = "INSERT INTO produto(descricao, marca, preco_custo, preco_venda, saldo_estoque) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, p.getDescricao());
			prep.setString(2, p.getMarca());
			prep.setDouble(3, p.getPreco_custo());
			prep.setDouble(4, p.getPreco_venda());
			prep.setInt(5, p.getSaldo_estoque());
			prep.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public String toTable() {
		String saida = "";
		for(Produto prod : listar()) {
			saida = saida + prod.toTable();
		}
		return saida;
	}
	
	public LinkedList<Produto> listar() {
		Conexao con = new Conexao();
		LinkedList<Produto> lista = new LinkedList<Produto>();
		try {
			String sql = "SELECT descricao, marca, preco_custo, preco_venda, saldo_estoque FROM produto";
			Statement instrucao = con.getConexao().createStatement();
			ResultSet res = instrucao.executeQuery(sql);
			while(res.next()) {
				Produto p = new Produto();
				p.setDescricao(res.getString("descricao"));
				p.setMarca(res.getString("marca"));
				p.setPreco_custo(res.getDouble("preco_custo"));
				p.setPreco_venda(res.getDouble("preco_venda"));
				p.setSaldo_estoque(res.getInt("saldo_estoque"));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		con.desconecta();
		return lista;
	}
}
