import 'dart:io';

void main() {
  List<int> vector = List.filled(10, 0); // vector con 10 posiciones

  print(" Ingrese 10 números para llenar el vector:");

  // Llenar el vector con ciclo for
  for (int i = 0; i < vector.length; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    vector[i] = int.parse(stdin.readLineSync()!);
  }

  print("\n Contenido del vector:");

  // Imprimir el contenido del vector
  for (int i = 0; i < vector.length; i++) {
    print("Índice: $i | Posición: ${i + 1} | Valor: ${vector[i]}");
  }
}
