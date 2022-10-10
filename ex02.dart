void main() {
  Baralho truco = Baralho();

  final Set<String> cartas = {"Paus", "Copas", "Espadas", "Ouro"};

  truco.montaBaralho(truco.baralho, cartas);
  truco.mostraBaralho();

  for (int i = 0; i < truco.baralho.length; i++) {
    if (truco.baralho.elementAt(i).contains(cartas.first)) {
      print("Removendo carta do baralho...");
      truco.baralho.remove(truco.baralho.elementAt(i));
    }
  }

  truco.mostraBaralho();
  truco.adicionaCartaRemovidaUltimo(truco.baralho, cartas);
  truco.mostraBaralho();
}

class Baralho {
  final Set<String> baralho = {};

  mostraBaralho() => print("As cartas do baralho são: $baralho");

  montaBaralho(Set<String> baralho, Set<String> cartas) {
    for (int i = 0; i < cartas.length; i++) {
      baralho.add(cartas.elementAt(i));
    }
  }
  
  adicionaCartaRemovidaUltimo(Set<String> baralho, Set<String> cartas) {
    print("Adicionando carta removida embaixo do baralho...");
    baralho.add(cartas.first);
  }
}
