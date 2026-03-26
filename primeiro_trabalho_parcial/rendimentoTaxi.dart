import 'dart:io';

void main(List<String> args) {
  //leitura dados do dia
  print("Digite a leitura do hodometro no início do dia: ");
  int? kmInicial = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Digite a leitura do hodometro no final do dia: ");
  int? kmFinal = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Digite quantos litros de combustível foram utilizados: ");
  int? combustivelUtilizado = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Digite o valor bruto recebido pelas corridas?");
  double? valorBrutoRecebido = double.tryParse(stdin.readLineSync()!) ?? 0;
  //fim dados dia

  //calculos
  double? mediaDeConsumo = (kmFinal - kmInicial) / combustivelUtilizado;
  double? lucroLiquido = valorBrutoRecebido - (combustivelUtilizado * 6.5);
  //fim calculos

  //prints
  print("O lucro foi de $lucroLiquido");
  print("A média de consumo foi de $mediaDeConsumo Km/L");
}
