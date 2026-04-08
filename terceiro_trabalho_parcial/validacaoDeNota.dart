import 'dart:io';

void main() {
  int nota = 0;
  do {
    print("Digite uma nota: ");
    nota = int.tryParse(stdin.readLineSync()!)??0;
  } while (nota >= 1 && nota <= 10);
}
