import 'dart:io';

void main(List<String> args) {
  
  stdout.write("Digite o preço do produto: ");
  String? preco = stdin.readLineSync();
  stdout.write("Digite o código da região: ");
  String? codigo = stdin.readLineSync();

  double? precoProduto = double.tryParse(preco!) ?? 0;
  int? codigoRegiao = int.tryParse(codigo!) ?? 0;


  switch(codigoRegiao){
    case 1: 
    precoProduto = precoProduto - (precoProduto*0.05);
    break;
    case 2: 
    precoProduto = precoProduto - (precoProduto*0.15);
    break;
    case 3: 
    precoProduto = precoProduto - (precoProduto*0.07);
    break;
    case 4:
    precoProduto = precoProduto - (precoProduto*0.12);
    break;
    case 5: 
    precoProduto = precoProduto - (precoProduto*0.2);
    break;
    default: 
    print ("Código inválido. Nenhum desconto aplicado.");
  }

    print("O preço final é de $precoProduto");
}