import 'dart:io';

void main() {
  print("MENÚ DE COLORES");
  print("1 = Amarillo");
  print("2 = Azul");
  print("3 = Rojo");

  stdout.write("Ingrese un número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese ptro número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  String resultado;

  if ((num1 == 1 && num2 == 1)) {
    resultado = "Amarillo";
  } else if (num1 == 2 && num2 == 2) {
    resultado = "Azul";
  } else if (num1 == 3 && num2 == 3) {
    resultado = "Rojo";
  } else if ((num1 == 1 && num2 == 2) || (num1 == 2 && num2 == 1)) {
    resultado = "Verde";
  } else if ((num1 == 1 && num2 == 3) || (num1 == 3 && num2 == 1)) {
    resultado = "Naranja";
  } else if ((num1 == 2 && num2 == 3) || (num1 == 3 && num2 == 2)) {
    resultado = "Violeta";
  } else {
    resultado = "Combinación no válida";
  }

  print("Su combinación es: $resultado");
}
