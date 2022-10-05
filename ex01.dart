void main() {
  Itens lista = Itens();

  lista.mostraListaItens();
  lista.mostraNumeroItens();
  print("--------------------------------------------------------");
  lista.adicionarItemDesejado();
  lista.mostraItensAdicionados();
  lista.mostraNumeroItensAdicionados();
  print("--------------------------------------------------------");
  lista.mostraListaItens();
  lista.mostraNumeroItens();
  print("--------------------------------------------------------");
  lista.retirarItensForaDeEstoque();
  lista.mostraItensForaDeEstoque();
  lista.mostraListaItens();
  lista.mostraNumeroItens();
  print("--------------------------------------------------------");
  lista.retirarItensComprados();
  lista.mostraItensComprados();
  lista.mostraListaItens();
  lista.mostraNumeroItens();
  print("--------------------------------------------------------");
  lista.progressao();
}

class Itens {
  final _itensDesejados = ["Ovo", "Leite", "Maçã", "Feijão"];
  final _listaAux = [];
  final _listaComprados = [];
  final _listaForaDeEstoque = [];

  // Mostra todos os itens contidos na lista
  mostraListaItens() => print("Lista de compras: $_itensDesejados");

  // Mostra o número de itens da lista
  mostraNumeroItens() => print("Número de itens da lista: ${_itensDesejados.length}");

  // Adiciona novos itens à lista de compras
  adicionarItemDesejado() {
    print("Adicionando itens a lista...");
    _listaAux.add("Queijo");
    _listaAux.add("Macarrão");
    _listaAux.add("Arroz");
    _listaAux.add("Água sanitária");
    for (var i = 0; i < _listaAux.length; i++) {
      _itensDesejados.add(_listaAux[i]);
    }
  }

  // Mostra o número de itens adicionados depois
  mostraNumeroItensAdicionados() => print("Número de itens adicionados: ${_listaAux.length}");

  // Mostra os itens adicionados depois
  mostraItensAdicionados() => print("Itens adicionados: ${_listaAux.getRange(0, _listaAux.length)}");

  // Indica a compra de itens e os retira da lista de compras
  retirarItensComprados() {
    print("Comprando itens...");
    _listaComprados.add(_itensDesejados[0]);
    _listaComprados.add(_itensDesejados[1]);
    _listaComprados.add(_itensDesejados[2]);
    _listaComprados.add(_itensDesejados[3]);
    _listaComprados.add(_itensDesejados[4]);
    _listaComprados.add(_itensDesejados[5]);

    for (var i = 0; i < _listaComprados.length; i++) {
      if (_itensDesejados.contains(_listaComprados[i])) {
        _itensDesejados.remove(_listaComprados[i]);
      }
    }
  }

  // Indica a retirada de itens fora de estoque e os tira da lista de compras
  retirarItensForaDeEstoque() {
    print("Retirando itens fora de estoque...");
    _listaForaDeEstoque.add(_itensDesejados[6]);
    _listaForaDeEstoque.add(_itensDesejados[7]);

    for (var i = 0; i < _listaForaDeEstoque.length; i++) {
      if (_itensDesejados.contains(_listaForaDeEstoque[i])) {
        _itensDesejados.remove(_listaForaDeEstoque[i]);
      }
    }
  }

  // Mostra os itens fora de estoque pro usuario
  mostraItensForaDeEstoque() =>
      print("Itens fora de estoque: $_listaForaDeEstoque");

  // Mostra os itens comprados pro usuário
  mostraItensComprados() => print("Itens já comprados: $_listaComprados");

  // Mostra a progressão da compra, e se a compra já está finalizada
  progressao() {
    var totalDeCompras = _listaComprados.length + _itensDesejados.length;
    print("Progressão: ${_listaComprados.length} / $totalDeCompras (${((_listaComprados.length / totalDeCompras) * 100).toStringAsFixed(0)}% da compra finalizada)");

    if (_listaComprados.length == totalDeCompras) {
      print("Lista comprada! Agora é só voltar pra casa.");
    } else {
      print("Ainda há alguns itens a serem comprados.");
    }
  }
}
