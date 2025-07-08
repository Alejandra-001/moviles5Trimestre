import 'dart:io';

void main() {
  stdout.write("Ingrese un número para ver su tabla de multiplicar: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("\n Tabla de multiplicar del $numero");

  for (int i = 1; i <= 10; i++) {
    int resultado = numero * i;
    print("$numero × $i = $resultado");
  }
}
