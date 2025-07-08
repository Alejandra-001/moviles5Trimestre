import 'dart:io';
import 'dart:math';

void main() {
  print("MENÚ DE OPERACIONES MATEMÁTICAS");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo");
  print("6. Cuadrado");
  print("7. Raíz cuadrada");
  print("8. Potencia");
  print("9. Porcentaje");
  print("10. Número aleatorio");

  stdout.write("Seleccione una opción (1-10): ");
  int opcion = int.parse(stdin.readLineSync()!);

  double num1, num2, resultado;

  switch (opcion) {
    case 1: // Suma
      num1 = pedirNumero("Ingrese el primer número: ");
      num2 = pedirNumero("Ingrese el segundo número: ");
      resultado = num1 + num2;
      print("Resultado: $resultado");
      break;

    case 2: // Resta
      num1 = pedirNumero("Ingrese el primer número: ");
      num2 = pedirNumero("Ingrese el segundo número: ");
      resultado = num1 - num2;
      print("Resultado: $resultado");
      break;

    case 3: // Multiplicación
      num1 = pedirNumero("Ingrese el primer número: ");
      num2 = pedirNumero("Ingrese el segundo número: ");
      resultado = num1 * num2;
      print("Resultado: $resultado");
      break;

    case 4: // División
      num1 = pedirNumero("Ingrese el numerador: ");
      num2 = pedirNumero("Ingrese el denominador: ");
      if (num2 != 0) {
        resultado = num1 / num2;
        print("Resultado: $resultado");
      } else {
        print("Error: No se puede dividir por cero.");
      }
      break;

    case 5: // Módulo
      num1 = pedirNumero("Ingrese el primer número: ");
      num2 = pedirNumero("Ingrese el segundo número: ");
      resultado = num1 % num2;
      print("Resultado: $resultado");
      break;

    case 6: // Cuadrado
      num1 = pedirNumero("Ingrese el número: ");
      resultado = pow(num1, 2).toDouble();
      print("El cuadrado de $num1 es $resultado");
      break;

    case 7: // Raíz cuadrada
      num1 = pedirNumero("Ingrese el número: ");
      if (num1 >= 0) {
        resultado = sqrt(num1);
        print("La raíz cuadrada de $num1 es $resultado");
      } else {
        print("Error: No se puede sacar raíz cuadrada de un número negativo.");
      }
      break;

    case 8: // Potencia
      num1 = pedirNumero("Base: ");
      num2 = pedirNumero("Exponente: ");
      resultado = pow(num1, num2).toDouble();
      print("Resultado: $resultado");
      break;

    case 9: // Porcentaje
      num1 = pedirNumero("Número: ");
      num2 = pedirNumero("Porcentaje (%): ");
      resultado = (num1 * num2) / 100;
      print("$num2% de $num1 es $resultado");
      break;

    case 10: // Número aleatorio
      Random random = Random();
      resultado = random.nextInt(100) + 1; // Número entre 1 y 100
      print("Número aleatorio generado: ${resultado.toInt()}");
      break;

    default:
      print("Opción inválida. Por favor seleccione entre 1 y 10.");
  }
}

double pedirNumero(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}
