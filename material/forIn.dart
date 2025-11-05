void main() {
  //lista de strings com nomes
  List<String> listaAlunas = ['Agata', 'Bia', 'Coly', 'Isis'];

  print('-' * 70);
  print('Lista de alunas');

  // for-in percorre diretamente os elementos da lista
  // Aqui usamos um contador (i) para numerar cada aluna

  int i = 1;
  for (var aluna in listaAlunas) {
    print('Aluna ${i++}: $aluna');
  }
  print('-' * 70);

  // Acesso por indice -> direferente do python, dart nao tem fatiamento
  //(ex.: lista[0:3]), mas podemos acessar elementos individuais pelo indice (começa em 0)
  print('${listaAlunas[0]}, também conhecida como ${listaAlunas[3]}');
  print('${listaAlunas[3]}, também conhecida como ${listaAlunas[0]}');
}
