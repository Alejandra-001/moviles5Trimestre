import 'dart:io';

void main() {
 
  List<String> campos = ["Nombre", "Apellido", "Edad", "Estado", "Teléfono"];

  List<List<String>> datos = List.generate(4, (_) => List.filled(5, ''));

  print("📋 Ingreso de datos de 4 compañeros:\n");

  for (int i = 0; i < 4; i++) {
    print("👤 Compañero ${i + 1}:");
    for (int j = 0; j < 5; j++) {
      stdout.write("Ingrese ${campos[j]}: ");
      datos[i][j] = stdin.readLineSync()!;
    }
    print(""); 
  }

  print(" Datos organizados:\n");

  
  for (var campo in campos) {
    stdout.write(campo.padRight(15));
  }
  print("\n" + "-" * 75);

  for (var fila in datos) {
    for (var valor in fila) {
      stdout.write(valor.padRight(15));
    }
    print("");
  }
}
