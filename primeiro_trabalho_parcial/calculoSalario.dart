import 'dart:io';

void main() {
  print("Digite o valor da hora trabalhada: ");
  double? valorHora = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  print("Digite o número de horas trabalhadas no mês: ");
  int numeroHoras = int.tryParse(stdin.readLineSync()!) ?? 0;

  double? salario = valorHora * numeroHoras;

  print("O salário do funcionário é de $salario");
}
