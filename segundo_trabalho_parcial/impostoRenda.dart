import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe o salário mensal: ');
  String? salario = stdin.readLineSync();

  double? salarioColaborador = double.tryParse(salario!) ?? 0;


  double aliquotas = 0;
  if (salarioColaborador <= 2000.00) {
    aliquotas = 0;
  } else if (salarioColaborador <= 5000.00) {
    aliquotas = 0.10;
  } else if (salarioColaborador <= 10000.00) {
    aliquotas = 0.15;
  } else {
    aliquotas = 0.20;
  }

  double? desconto = salarioColaborador * aliquotas;

  print('Salário: $salarioColaborador');
  if (aliquotas == 0) {
    print('Isento de imposto.');
  } else {
    print('Alíquota: $aliquotas');
    print('Imposto devido: $desconto');
  }
}
