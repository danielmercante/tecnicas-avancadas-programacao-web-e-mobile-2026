import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe o lanche: ');
  String? lanche = stdin.readLineSync();

  stdout.write('Informe a bebida: ');
  String? bebida = stdin.readLineSync();

//setando pra lowercase pra facilitar a comparação
  lanche = lanche!.toLowerCase();
  bebida = bebida!.toLowerCase();

  bool pedidoValido = true;

  if (lanche == 'bauru' && bebida == 'guaraná') {
    pedidoValido = false;
  }

  if (lanche == 'x-frango' && bebida == 'água') {
    pedidoValido = false;
  }

  if (lanche == 'pizza' && bebida != 'vinho' && bebida != 'água') {
    pedidoValido = false;
  }

  print('\nLanche escolhido: $lanche');
  print('Bebida escolhida: $bebida');

  if (pedidoValido) {
    print('Pedido pode ser atendido ');
  } else {
    print('Pedido NÃO pode ser atendido ');
  }
}