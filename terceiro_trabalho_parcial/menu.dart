import 'dart:io';

void main() {
  int opcao = 0;
  do {
    print('1- Soma \n2- Subtração\n0- Sair\n');
    opcao = int.tryParse(stdin.readLineSync()!) ?? 0;
  } while (opcao != 0);
}
