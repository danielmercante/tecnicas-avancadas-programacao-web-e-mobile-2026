import 'dart:io';

void main() {
  print("digite o tamanho do intervalo : ");
  int numeroIntervalo = int.parse(stdin.readLineSync()!);

  int resultado = 0;

  for (int i = 1; i <= numeroIntervalo; i++) {
    resultado += i;
  }

  print(resultado);
}
