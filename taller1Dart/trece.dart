import 'dart:io';

void main() {
  print("--- FACTURACIÓN DE PRODUCTO ---");

  stdout.write("Ingrese el nombre del artículo: ");
  String nombre = stdin.readLineSync()!;

  double valorUnidad = pedirPositivo("Ingrese el valor por unidad: ");
  int cantidad = pedirEnteroPositivo("Ingrese la cantidad a llevar: ");

  stdout.write("¿Es de la canasta familiar? (sí/no): ");
  String canasta = stdin.readLineSync()!.toLowerCase();

  double totalSinIVA = valorUnidad * cantidad;
  double totalFinal;

  if (canasta == "no") {
    totalFinal = totalSinIVA * 1.19;
    print("\n Artículo: $nombre");
    print(" Total sin IVA: \$${totalSinIVA.toStringAsFixed(2)}");
    print(" Total con IVA (19%): \$${totalFinal.toStringAsFixed(2)}");
  } else if (canasta == "sí" || canasta == "si") {
    totalFinal = totalSinIVA;
    print("\n Artículo: $nombre");
    print(" Producto exento de IVA (Canasta Familiar)");
    print(" Total a pagar: \$${totalFinal.toStringAsFixed(2)}");
  } else {
    print(" Opción inválida. Escriba 'sí' o 'no'.");
  }
}

double pedirPositivo(String mensaje) {
  double valor;
  do {
    stdout.write(mensaje);
    valor = double.parse(stdin.readLineSync()!);
    if (valor <= 0) {
      print(" El valor debe ser mayor a cero.");
    }
  } while (valor <= 0);
  return valor;
}

int pedirEnteroPositivo(String mensaje) {
  int valor;
  do {
    stdout.write(mensaje);
    valor = int.parse(stdin.readLineSync()!);
    if (valor <= 0) {
      print(" La cantidad debe ser mayor a cero.");
    }
  } while (valor <= 0);
  return valor;
}
