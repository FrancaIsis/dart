import 'dart:io';

void main(){
  print('-'*70);
  print('Exemplo de where em Mapa');
  print('-'*70);

  Map<String, int> pessoas = {
    'Alice': 20,
    'Bob': 17,
    'Carol': 25,
    'Dave': 16,
    'Eve': 30
  };

  /* Filtra apenas as pessoas ocm idade maior que 18 anos 
  1. pessoas.entries retorna um Iterable de MapEntry (chave e valor)
  2. where ((element) => element.value > 18) filtra apenas as entradas
  cujo valor (idade) é maior que 18
  3. Map.fromEntries(...) converte novamente o Iterable filtrado em um Map*/

  Map<String, int>pessoasMaiores = Map.fromEntries(pessoas.entries.where((element) => element.value > 18));

  //Saída esperada:

  print(pessoasMaiores);
  print('-'*70);

}