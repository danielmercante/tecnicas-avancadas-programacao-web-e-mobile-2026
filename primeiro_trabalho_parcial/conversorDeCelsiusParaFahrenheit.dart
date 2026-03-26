import 'dart:io';

void main(List<String> args) {
  print("Digite a temperatura em Celsius: ");
  double? celsius = double.tryParse(stdin.readLineSync()!) ?? 0;

  double? fah = celsius * 9 / 5 + 32;

  print("A temperatura em fah é de $fah");
}
