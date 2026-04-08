import 'dart:io';

void main() {
  int numeroPar = 0;
  int numeroImpar = 0;

  print("Digite um número: ");
  int numeroDigitado = int.tryParse(stdin.readLineSync()!) ?? 0;

  while (numeroDigitado != 0) {
    if (numeroDigitado % 2 == 0) {
      numeroPar++;
    } else {
      numeroImpar++;
    }
    print("Digite um número: ");
    numeroDigitado = int.tryParse(stdin.readLineSync()!) ?? 0;
  }

  print("Pares: $numeroPar");
  print("Impares: $numeroImpar");
}
