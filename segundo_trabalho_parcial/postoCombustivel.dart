import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe o tipo de combustível (1-Gasolina Comum, 2-Gasolina Premium, 3-Diesel, 4-Álcool): ');
  String? tipo = stdin.readLineSync();

  stdout.write('Informe a quantidade de litros: ');
  String? litrosInput = stdin.readLineSync();

  int tipoCombustivel = int.tryParse(tipo!) ?? 0;
  double litros = double.tryParse(litrosInput!) ?? 0;

  double precoUnitario = 0;
  String nomeCombustivel = '';

  if (tipoCombustivel == 1) {
    nomeCombustivel = 'Gasolina Comum';
    precoUnitario = 6.50;
  } else if (tipoCombustivel == 2) {
    nomeCombustivel = 'Gasolina Premium';
    precoUnitario = 7.80;
  } else if (tipoCombustivel == 3) {
    nomeCombustivel = 'Diesel';
    precoUnitario = 5.90;
  } else if (tipoCombustivel == 4) {
    nomeCombustivel = 'Álcool';
    precoUnitario = 4.20;
  } else {
    print('Combustível inválido.');
    return;
  }

  double total = litros * precoUnitario;

  print('\nTipo de combustível: $nomeCombustivel');
  print('Quantidade de litros: $litros');
  print('Preço por litro: R\$ $precoUnitario');
  print('Valor total a pagar: R\$ $total');
}