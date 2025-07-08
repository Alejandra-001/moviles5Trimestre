import 'dart:io';
import 'dart:math';

void main() {
  print("--- CÁLCULO DE CILINDRO CON TAPA ---");

  double radio = pedirPositivo("Ingrese el radio del cilindro (en cm): ");
  double altura = pedirPositivo("Ingrese la altura del cilindro (en cm): ");

  // Área lateral: 2πrh
  double areaLateral = 2 * pi * radio * altura;

  // Área de las dos bases: 2πr²
  double areaBases = 2 * pi * pow(radio, 2);

  // Área total
  double areaTotal = areaLateral + areaBases;

  // Perímetro de la base
  double perimetroBase = 2 * pi * radio;

  // Volumen
  double volumen = pi * pow(radio, 2) * altura;

  print("\n--- RESULTADOS ---");
  print("Radio: ${radio.toStringAsFixed(2)} cm");
  print("Altura: ${altura.toStringAsFixed(2)} cm");
  print("Área total: ${areaTotal.toStringAsFixed(2)} cm²");
  print("Perímetro de la base: ${perimetroBase.toStringAsFixed(2)} cm");
  print("Volumen: ${volumen.toStringAsFixed(2)} cm³");
}

// Función para asegurar que el número sea mayor a cero
double pedirPositivo(String mensaje) {
  double valor;
  do {
    stdout.write(mensaje);
    valor = double.parse(stdin.readLineSync()!);
    if (valor <= 0) {
      print("⚠️ El valor debe ser mayor que cero.");
    }
  } while (valor <= 0);
  return valor;
}
