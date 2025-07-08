import 'dart:io';

void main() {
  stdout.write("¿Cuántos elementos desea ingresar en el vector?: ");
  int x = int.parse(stdin.readLineSync()!);

  List<int> vector = [];

  // Llenar el vector
  for (int i = 0; i < x; i++) {
    stdout.write("Ingrese el valor ${i + 1}: ");
    int valor = int.parse(stdin.readLineSync()!);
    vector.add(valor);
  }

  // Preguntar tipo de ordenamiento
  stdout.write("¿Desea ordenarlo ascendente o descendente?: ");
  String orden = stdin.readLineSync()!.toLowerCase();

  // Ordenar el vector
  if (orden == "ascendente") {
    vector.sort();
    print("\n Vector ordenado de forma ascendente:");
  } else if (orden == "descendente") {
    vector.sort((a, b) => b.compareTo(a));
    print("\n Vector ordenado de forma descendente:");
  } else {
    print(" Opción inválida. Mostrando vector sin ordenar:");
  }

  // Imprimir el vector
  print(vector);
}
