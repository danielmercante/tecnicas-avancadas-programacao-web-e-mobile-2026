import 'dart:io';

void main() {
  int contPalavras = 0;

  print("Digite uma palavra: ");
  String palavra = stdin.readLineSync()!.toLowerCase();

  while (palavra != 'sair') {
    print("Digite uma palavra: ");
    palavra = stdin.readLineSync()!.toLowerCase();
    contPalavras++;
  }
  print("\n $contPalavras");
}
