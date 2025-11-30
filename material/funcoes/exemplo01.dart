import 'dart:io';

//funcao para simular envio de email
void enviarEmail(String destinatario, String assunto, String msg) {
  print('=' * 70);
  print('Enviando e-mail para; $destinatario');
  print('Assunto: $assunto');
  print('Corpo: $msg');
  print('-' * 70);
  print('Email enviado com sucesso!');
  print('-' * 70);
  print('');
}

void main() {
  print('\nExemplo de funçã void com validação de destinatário');
  print('-' * 70);

  while (true) {
    //Leitura do destinatario
    stdout.write('Digite o destinatário: ');
    String destinatario = (stdin.readLineSync() ?? '').trim();

    if (destinatario.isEmpty) {
      print('Erro: destinatário não pode ficar vazio! Tente novamente.\n');
      continue; //volta pro inicio do loop principal
    }

    //Leitura do assunto
    stdout.write('Digite o assunto: ');
    String assunto = (stdin.readLineSync() ?? '').trim();
    if (assunto.isEmpty) assunto = 'Sem assunto';

    //Leitura da mensagem
    stdout.write('Digite o corpo da mensagem: ');
    String msg = (stdin.readLineSync() ?? '').trim();
    if (msg.isEmpty) msg = 'Mensagem vazia';

    //Enviar email
    enviarEmail(destinatario, assunto, msg);

    //Perguntar se deseja continuar
    while (true) {
      stdout.write('Deseja enviar outro email? (s/n): ');
      String resposta = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if (resposta == 's') {
        break; //volta para o loop principal
      } else if (resposta == 'n') {
        print('Encerrando o programa..');
        return; // encerra o programa
      } else {
        print('Resposta inválida! Digite "s" para sim ou "n" para não');
      }
    }
    print('');
  }
}
