void main() {
  Baralho truco = Baralho();

  final Set<String> cartas = {"Paus", "Copas", "Espadas", "Ouro"};

  truco.montaBaralho(truco._baralho, cartas);
  truco.mostraBaralho();

  // Estrutura responsável por remover a primeira carta do baralho
  for (var i = 0; i < truco._baralho.length; i++) {
    if (truco._baralho.elementAt(i).contains(cartas.first)) {
      print("Removendo carta do baralho...");
      truco._baralho.remove(truco._baralho.elementAt(i));
    }
  }

  truco.mostraBaralho();
  truco.adicionaCartaRemovidaUltimo(truco._baralho, cartas);
  truco.mostraBaralho();
}

class Baralho {
  final Set<String> _baralho = {};

  // Mostra o baralho com as cartas adicionadas
  mostraBaralho() => print("As cartas do baralho são: $_baralho");

  // Monta o baralho partir das cartas denominadas no main
  montaBaralho(Set<String> baralho, Set<String> cartas) {
    for (var i = 0; i < cartas.length; i++) {
      baralho.add(cartas.elementAt(i));
    }
  }
  
  // Pega a carta removida e coloca na última posição do baralho
  adicionaCartaRemovidaUltimo(Set<String> baralho, Set<String> cartas) {
    print("Adicionando carta removida embaixo do baralho...");
    baralho.add(cartas.first);
  }
}
