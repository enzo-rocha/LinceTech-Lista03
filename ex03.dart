import 'dart:math';

void main() {
  Nome cliente = Nome();
  
  Set<String> nomes = {
    "Victor",
    "Lucas",
    "Joana",
    "Luana",
    "Pedro",
    "Miguel",
    "Matheus",
    "Letícia",
    "Maria",
    "Daniela"
  };
  
  Set<String> sobrenomes = {
    "Souza",
    "Silva",
    "Santos",
    "Rocha",
    "Moraes",
    "Mendonça",
    "Barbosa",
    "Trindade",
    "Abreu",
    "Bueno"
  };
  
  Set<String> clientes = {};
  
  final int tamanho = nomes.length;
  
  for (int i = 0; i < tamanho; i++) {
    cliente.gerarNomeAleatorio(nomes, sobrenomes, clientes, tamanho);
    print("Cliente ${i + 1}: ${clientes.elementAt(i)} entrou na fila!");
  }
  
  print("-------------------------------------------");
  
  for (int i = 0; i < tamanho; i++) {
    print("${clientes.elementAt(i)} foi atendido(a)");
  }
  
  print("-------------------------------------------");
  print("Todos foram atendidos.");
}

class Nome {
  gerarNomeAleatorio(Set<String> nome, Set<String> sobrenome, Set<String> cliente, int tamanho) {
    String n = nome.elementAt(Random().nextInt(tamanho));
    String s = sobrenome.elementAt(Random().nextInt(tamanho));
    
    cliente.add("$n $s");
  }
}
