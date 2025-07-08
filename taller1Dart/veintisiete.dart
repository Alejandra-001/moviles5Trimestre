import 'dart:io';

void main() {
  const int PRODUCTOS = 10;

  List<List<String>> catalogo = List.generate(4, (_) => List.filled(PRODUCTOS, ''));

  print(" Ingreso de productos al catálogo (10 productos):\n");

  for (int i = 0; i < PRODUCTOS; i++) {
    stdout.write("ID del producto ${i + 1}: ");
    catalogo[0][i] = stdin.readLineSync()!;

    stdout.write("Nombre del producto: ");
    catalogo[1][i] = stdin.readLineSync()!;

    stdout.write("Precio por unidad: ");
    catalogo[2][i] = stdin.readLineSync()!;

    stdout.write("¿Tiene IVA? (sí/no): ");
    catalogo[3][i] = stdin.readLineSync()!.toLowerCase();

    print("");
  }

  
  List<List<String>> factura = [];

  print("¡Comienza la compra!\n");

  for (int i = 0; i < 10; i++) {
    stdout.write("Ingrese el ID del producto que desea llevar: ");
    String idBuscado = stdin.readLineSync()!;
    int index = catalogo[0].indexOf(idBuscado);

    if (index == -1) {
      print(" Producto no encontrado.\n");
      continue;
    }

    stdout.write("Ingrese la cantidad que desea llevar: ");
    int cantidad = int.parse(stdin.readLineSync()!);

    // Obtener valores del catálogo
    String id = catalogo[0][index];
    String nombre = catalogo[1][index];
    double precioUnidad = double.parse(catalogo[2][index]);
    String tieneIva = catalogo[3][index];
    double subtotal = precioUnidad * cantidad;
    double iva = (tieneIva == 'sí' || tieneIva == 'si') ? subtotal * 0.19 : 0;
    double total = subtotal + iva;

    
    factura.add([
      "${i + 1}",       // Ítem
      id,
      nombre,
      "$cantidad",
      precioUnidad.toStringAsFixed(2),
      (iva > 0 ? "19%" : "0%"),
      total.toStringAsFixed(2)
    ]);

    stdout.write("¿Desea llevar otro producto? (sí/no): ");
    String seguir = stdin.readLineSync()!.toLowerCase();
    if (seguir != 'sí' && seguir != 'si') break;

    print("");
  }

  print("\n FACTURA FINAL\n");
  print("Ítem | ID   | Producto        | Cant | V. Unidad | IVA  | Total");
  print("---------------------------------------------------------------");

  double totalFactura = 0;
  for (var fila in factura) {
    print("${fila[0].padRight(5)}| "
        "${fila[1].padRight(5)}| "
        "${fila[2].padRight(15)}| "
        "${fila[3].padRight(5)}| "
        "\$${fila[4].padRight(9)}| "
        "${fila[5].padRight(5)}| "
        "\$${fila[6]}");
    totalFactura += double.parse(fila[6]);
  }

  print("---------------------------------------------------------------");
  print(" Total a pagar: \$${totalFactura.toStringAsFixed(2)}");
}
