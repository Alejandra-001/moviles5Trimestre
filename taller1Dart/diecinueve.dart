import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Escriba 'generar' para obtener su jugada de Baloto: ");
  String accion = stdin.readLineSync()!.toLowerCase();

  if (accion == 'generar') {
    List<int> numeros = [];

    Random random = Random();

    // Generar 6 números únicos entre 1 y 45
    while (numeros.length < 6) {
      int numero = random.nextInt(45) + 1; // genera entre 1 y 45
      if (!numeros.contains(numero)) {
        numeros.add(numero);
      }
    }

    // Ordenar los números de menor a mayor
    numeros.sort();

    print("\n Números del Baloto generados:");
    print(numeros);
  } else {
    print(" Acción no válida. Escriba 'generar' para iniciar.");
  }
}
