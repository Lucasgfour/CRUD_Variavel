package org.produto;

import java.text.DecimalFormat;

public class Produto {
	private String descricao;
	private String marca;
	private Double preco_custo;
	private Double preco_venda;
	private int saldo_estoque;
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public Double getPreco_custo() {
		return preco_custo;
	}
	public void setPreco_custo(Double preco_custo) {
		this.preco_custo = preco_custo;
	}
	public Double getPreco_venda() {
		return preco_venda;
	}
	public void setPreco_venda(Double preco_venda) {
		this.preco_venda = preco_venda;
	}
	public int getSaldo_estoque() {
		return saldo_estoque;
	}
	public void setSaldo_estoque(int saldo_estoque) {
		this.saldo_estoque = saldo_estoque;
	}
	
	public String toTable() {
		DecimalFormat df = new DecimalFormat("#.00");
		String saida = "<tr>\n<td>" + this.descricao + "</td>\n<td>" + this.marca + "</td>\n<td>R$" + df.format(this.preco_custo) + "</td>\n<td>R$" + df.format(this.preco_venda) + "</td>\n<td>" + this.saldo_estoque + "</td>\n</tr>\n";
		return saida;
	}
	
}
