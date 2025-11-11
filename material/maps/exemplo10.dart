import 'dart:io';

void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE(), MAPS() E REDUCE() COM STRINGS');
  print('-' * 70);

  //Map de pessoas: chave é o nome e valor é a idade
  Map<String, int> pessoas = {
    'Ana': 17,
    'Bruno': 22,
    'Carla': 19,
    'Diego': 25,
    'Elisa': 16,
  };
  //------------------------------------
  // Encadeamento de métodos funcionais:
  // Objetivo: pegar nomes de pessoas adultas, colocar em maúscuas e
  // concatenar em uma única String

  // Entradas DO mAP (nome, idade)
  String nomesAdultos = pessoas.entries
      //Filtra: apenas maiores de idade -> Bruno, Carla, Diego
      .where((entrada) => entrada.value >= 18)
      //Tranforma: nomes em maiusculas -> BRUNO, CARLA, DIEGO
      .map((entrada) => entrada.key.toUpperCase())
}
