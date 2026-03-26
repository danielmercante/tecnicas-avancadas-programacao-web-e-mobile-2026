import 'dart:io';

void main() {
  stdout.write("Digite a nota da prova:");
  String? valor1 = stdin.readLineSync();
  double? valorProva = double.tryParse(valor1!) ?? 0.0;

  stdout.write("Digite a nota do trabalho: ");
  double? valorTrabalho = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? media = valorProva * 0.6 + valorTrabalho * 0.4;

  print("A sua média é $media\n");
}
