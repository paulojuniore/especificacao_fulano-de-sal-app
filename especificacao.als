abstract sig Usuario { }

sig Cliente extends Usuario {
	pedido: set Pedido
}

sig Administrador extends Usuario { }

sig Produto {
	categoria: one Categoria
}

sig Categoria { }

sig Pedido { 
	marmita: one Marmita,
	produtos: set Produto,
	cliente: one Cliente
}

sig Cardapio {
	produtos: set Produto
}

sig Marmita { }

fact garantirUmProdutoTerUmaCategoria {
	all p: Produto | #p.categoria = 1
}

fact garantirPedido {
	all p: Pedido | #p.marmita = 1 and #p.cliente = 1 and #p.produtos >= 2
}

pred show() {}
run show for 3
