class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

Set<Produto> criarProdutos() {
  Set<Produto> produtos = {
    Produto("Geladeira", 1499.99),
    Produto("Sofá", 999.99)
  };
  return produtos;
}

String imprimirProduto(Produto produto) {
  String texto = "O produto ${produto.nome} tem preço de R\$ ${produto.preco}";
  return texto;
}

void main(List<String> args) {
  Set<Produto> produtos = criarProdutos();

  for (Produto produto in produtos) {
    print(imprimirProduto(produto));
  }
}
