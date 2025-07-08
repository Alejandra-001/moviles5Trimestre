import 'dart:io';
import 'dart:math';

void main() {
  int opcion;

  do {
    print("\n--- MENÚ DE FIGURAS GEOMÉTRICAS ---");
    print("1. Triángulo");
    print("2. Rectángulo");
    print("3. Círculo");
    print("0. Salir");

    stdout.write("Seleccione una opción: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        // Triángulo
        double base = pedirPositivo("Ingrese la base del triángulo: ");
        double altura = pedirPositivo("Ingrese la altura del triángulo: ");
        double lado = pedirPositivo("Ingrese el lado del triángulo (equilátero): ");
        double areaT = (base * altura) / 2;
        double perimetroT = 3 * lado;
        mostrarResultado("Triángulo", areaT, perimetroT);
        break;

      case 2:
        // Rectángulo
        double base = pedirPositivo("Ingrese la base del rectángulo: ");
        double altura = pedirPositivo("Ingrese la altura del rectángulo: ");
        double areaR = base * altura;
        double perimetroR = 2 * (base + altura);
        mostrarResultado("Rectángulo", areaR, perimetroR);
        break;

      case 3:
        // Círculo
        double radio = pedirPositivo("Ingrese el radio del círculo: ");
        double areaC = pi * pow(radio, 2);
        double perimetroC = 2 * pi * radio;
        mostrarResultado("Círculo", areaC, perimetroC);
        break;

      case 0:
        print("Gracias por usar el programa");
        break;

      default:
        print(" Opción inválida. Intente nuevamente.");
    }
  } while (opcion != 0);
}

// 🔁 Función para pedir solo números positivos
double pedirPositivo(String mensaje) {
  double numero;
  do {
    stdout.write(mensaje);
    numero = double.parse(stdin.readLineSync()!);
    if (numero <= 0) {
      print("⚠️ El número debe ser mayor a cero.");
    }
  } while (numero <= 0);
  return numero;
}


void mostrarResultado(String figura, double area, double perimetro) {
  print("\n--- Resultado ---");
  print("Figura: $figura");
  print("Área: ${area.toStringAsFixed(2)} unidades²");
  print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
}
