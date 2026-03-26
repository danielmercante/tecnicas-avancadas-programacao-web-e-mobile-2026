import 'dart:io';

void main() {
  print("Digite o valor em Metros: ");
  double? valorEmMetros = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? valorEmCM = valorEmMetros * 100;

  print("$valorEmMetros metros é igual a $valorEmCM Cm.");
}
