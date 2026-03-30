import 'dart:io';

void main() {
  stdout.write("Digite a distância: ");
  String? valor = stdin.readLineSync();

  if (valor == null || valor.isEmpty) {
    print("O campo distância é obrigatorio!");
    return;
  }

  double? distancia = double.tryParse(valor) ?? 0;
  double? premio;

  if (distancia < 800) {
    premio = 5000;
  } else if (distancia > 800 && distancia < 1500) {
    premio = 10000;
  } else {
    premio = 15000;
  }

  print("O prêmio é de: $premio");
}
