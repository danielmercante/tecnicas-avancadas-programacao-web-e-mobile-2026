import 'dart:io';

void main(List<String> args) {
  print("Olá! Digite a distância percorrida pelo nadador: ");
  String? valor = stdin.readLineSync();

  if (valor == null || valor.isEmpty){
    print("Esse campo é obrigatório.");
    return;
  }

  double? distancia = double.tryParse(valor) ?? 0;
  double? premio;

  if(distancia < 800){
    premio = 5000;
  }else if(distancia >= 800 && distancia <= 1500){
    premio = 10000;
  }else {
    premio = 15000;
  }

print("O premio é de $premio reais");

}