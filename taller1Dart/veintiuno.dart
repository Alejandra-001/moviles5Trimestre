import 'dart:io';

void main() {
  print("--- SERIE PAR O IMPAR ENTRE DOS NÚMEROS ---");

  int num1 = pedirEntero("Ingrese el primer número: ");
  int num2 = pedirEntero("Ingrese el segundo número: ");

  // Ordenar los extremos
  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  stdout.write("¿Desea ver la serie PAR o IMPAR?: ");
  String tipo = stdin.readLineSync()!.toLowerCase();

  print("\n Serie $tipo entre $menor y $mayor:");

  for (int i = menor; i <= mayor; i++) {
    if (tipo == 'par' && i % 2 == 0) {
      print(i);
    } else if (tipo == 'impar' && i % 2 != 0) {
      print(i);
    }
  }
}

int pedirEntero(String mensaje) {
  stdout.write(mensaje);
  return int.parse(stdin.readLineSync()!);
}
