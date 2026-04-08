import 'dart:io';

void main() {
  print("Digite um número para adicionar a soma: ");
  double numSoma = double.tryParse(stdin.readLineSync()!) ?? 0;
  double soma = numSoma;

  while (numSoma != 0) {
    print('Digite outro numero ou 0 para parar: ');
    numSoma = double.tryParse(stdin.readLineSync()!) ?? 0;
    soma += numSoma;
  }

  print(soma);
}
