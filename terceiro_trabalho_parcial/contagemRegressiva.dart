import 'dart:io';

void main() {
  print("Digite um número para a contagem regressiva:");
  int numero = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Contagem regressiva:");
  for (int i = numero; i >= 0; i--) {
    print(i);
  }
}

