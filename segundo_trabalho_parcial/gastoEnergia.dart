import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe o consumo mensal em kWh: ');
  String? consumo = stdin.readLineSync();

  double consumoReal = double.tryParse(consumo!) ?? 0;

  double precoPorKwh = 0;

  // Definição da tarifa
  if (consumoReal <= 100) {
    precoPorKwh = 0.80;
  } else if (consumoReal <= 300) {
    precoPorKwh = 1.10;
  } else if (consumoReal <= 500) {
    precoPorKwh = 1.40;
  } else {
    precoPorKwh = 1.80;
  }

  double valorBase = consumoReal * precoPorKwh;
  double taxaExtra = 0;

  // Taxa extra de 10% se passar de 400 kWh
  if (consumoReal > 400) {
    taxaExtra = valorBase * 0.10;
  }

  double total = valorBase + taxaExtra;

  print('\nConsumo mensal: $consumoReal kWh');
  print('Valor base da conta: R\$ $valorBase');

  if (taxaExtra > 0) {
    print('Taxa extra (10%): R\$ $taxaExtra');
  } else {
    print('Sem taxa extra.');
  }

  print('Valor total da conta: R\$ $total');
}