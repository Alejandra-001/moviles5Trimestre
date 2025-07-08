import 'dart:io';

void main() {
  print("--- ORDENADOR DE TRES NÚMEROS ---");

  double num1 = pedirNumero("Ingrese el primer número: ");
  double num2 = pedirNumero("Ingrese el segundo número: ");
  double num3 = pedirNumero("Ingrese el tercer número: ");

  // Lista con los tres números
  List<double> numeros = [num1, num2, num3];

  // Preguntar al usuario cómo desea ordenarlos
  stdout.write("¿Cómo desea ordenarlos? (ascendente/descendente): ");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == "ascendente") {
    numeros.sort(); // ordena de menor a mayor
    print(" Números en orden ascendente: $numeros");
  } else if (orden == "descendente") {
    numeros.sort((a, b) => b.compareTo(a)); // de mayor a menor
    print(" Números en orden descendente: $numeros");
  } else {
    print(" Opción inválida. Escriba 'ascendente' o 'descendente'.");
  }
}

double pedirNumero(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}
