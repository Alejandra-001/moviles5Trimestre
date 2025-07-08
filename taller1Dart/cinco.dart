import 'dart:io';

void main() {
  stdout.write("Ingrese un  numero: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa otro  número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int multiplicacion  = num1 * num2;

  print("La multiplicacion del número A con el número B es: $multiplicacion");
}
