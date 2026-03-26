import 'dart:io';

void main(List<String> args) {
  print("Digite o valor aplicado: ");
  double? valorAplicado = double.tryParse(stdin.readLineSync()!) ?? 0;

  double? rendimento = valorAplicado + (valorAplicado * (0.5 / 100));

  print("O valor final é de: $rendimento");
  
}
