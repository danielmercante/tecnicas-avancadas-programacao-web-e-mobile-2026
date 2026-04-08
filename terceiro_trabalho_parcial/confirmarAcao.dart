import 'dart:io';

void main() {
  String opcao = '';
  do {
    print("Deseja continuar? s/n");
    opcao = stdin.readLineSync()!.toLowerCase();
  } while (opcao == 's' || opcao == 'n');
}
