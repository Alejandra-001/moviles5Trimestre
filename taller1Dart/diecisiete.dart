import 'dart:io';

void main() {
  stdout.write("Ingrese un número entre 0 y 12 para calcular su factorial: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print(" El número no puede ser negativo.");
  } else if (numero > 12) {
    print(" El factorial es infinito (o demasiado grande para calcular de forma segura).");
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print("El factorial de $numero es: $factorial");
  }
}
