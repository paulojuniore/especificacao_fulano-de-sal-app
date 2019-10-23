abstract sig Usuario { }

sig Cliente extends Usuario { }

sig Administrador extends Usuario { }

sig Categoria { 
	produtos: set Produto
}

sig Pedido { 
	marmita: one Marmita,
	cliente: one Cliente
}

sig Cardapio {
	categorias: set Categoria
}

sig Produto {
	categoria: one Categoria
}

sig Marmita { }
