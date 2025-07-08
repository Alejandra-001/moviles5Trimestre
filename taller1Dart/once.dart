import 'dart:io';

void main() {
  print("--- IDENTIFICADOR DE TRIÁNGULOS ---");
  print("Seleccione una opción:");
  print("1. Ingresar por Ángulos");
  print("2. Ingresar por Lados");

  stdout.write("Opción: ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    // --- Por ÁNGULOS ---
    double ang1 = pedirAngulo("Ingrese el primer ángulo: ");
    double ang2 = pedirAngulo("Ingrese el segundo ángulo: ");
    double ang3 = pedirAngulo("Ingrese el tercer ángulo: ");

    double suma = ang1 + ang2 + ang3;

    if (suma != 180) {
      print(" Los ángulos no forman un triángulo (la suma debe ser 180°).");
    } else {
      print(" Es un triángulo válido por ángulos.");
      if (ang1 == 90 || ang2 == 90 || ang3 == 90) {
        print("Tipo de triángulo: Rectángulo");
      } else if (ang1 > 90 || ang2 > 90 || ang3 > 90) {
        print("Tipo de triángulo: Obtusángulo");
      } else {
        print("Tipo de triángulo: Acutángulo");
      }
    }
  } else if (opcion == 2) {
    // --- Por LADOS ---
    double lado1 = pedirLado("Ingrese el primer lado: ");
    double lado2 = pedirLado("Ingrese el segundo lado: ");
    double lado3 = pedirLado("Ingrese el tercer lado: ");

    // Validación de existencia de triángulo
    double maxLado = [lado1, lado2, lado3].reduce((a, b) => a > b ? a : b);
    double sumaOtros = lado1 + lado2 + lado3 - maxLado;

    if (sumaOtros <= maxLado) {
      print("No se puede formar un triángulo con esos lados.");
    } else {
      print(" Es un triángulo válido por lados.");

      if (lado1 == lado2 && lado2 == lado3) {
        print("Tipo de triángulo: Equilátero");
      } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        print("Tipo de triángulo: Isósceles");
      } else {
        print("Tipo de triángulo: Escaleno");
      }
    }
  } else {
    print("❌ Opción inválida.");
  }
}

// Función para pedir ángulos mayores a 0
double pedirAngulo(String mensaje) {
  double valor;
  do {
    stdout.write(mensaje);
    valor = double.parse(stdin.readLineSync()!);
    if (valor <= 0) {
      print(" El ángulo debe ser mayor que cero.");
    }
  } while (valor <= 0);
  return valor;
}

// Función para pedir lados mayores a 0
double pedirLado(String mensaje) {
  double valor;
  do {
    stdout.write(mensaje);
    valor = double.parse(stdin.readLineSync()!);
    if (valor <= 0) {
      print("El lado debe ser mayor que cero.");
    }
  } while (valor <= 0);
  return valor;
}
