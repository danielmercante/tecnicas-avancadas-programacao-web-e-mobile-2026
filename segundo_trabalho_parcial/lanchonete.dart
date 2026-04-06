import 'dart:io';

void main(List<String> args) {
  print("Digite o código do produto: ");
  String? cod = stdin.readLineSync();
  print("Digite quantas unidades do produto vc quer: ");
  String? qntd = stdin.readLineSync();

  int codigoProduto = int.tryParse(cod!) ?? 0;
  int quantidadeProduto = int.tryParse(qntd!) ?? 0;
  double valorFinal = 0;

  switch (codigoProduto) {
    case 101:
      valorFinal = 14.2 * quantidadeProduto;
      break;
    case 102:
      valorFinal = 12.3 * quantidadeProduto;
      break;
    case 103:
      valorFinal = 13.5 * quantidadeProduto;
      break;
    case 104:
      valorFinal = 10.2 * quantidadeProduto;
      break;
    case 105:
      valorFinal = 15.3 * quantidadeProduto;
      break;
    case 106:
      valorFinal = 10.0 * quantidadeProduto;
      break;
  }

  print("O total é de: $valorFinal");
}
