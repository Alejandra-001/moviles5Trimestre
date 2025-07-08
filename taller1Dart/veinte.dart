import 'dart:io';

void main() {
  stdout.write("Ingrese un número entero positivo: ");
  String entrada = stdin.readLineSync()!;

  // Validación simple
  if (!RegExp(r'^\d+$').hasMatch(entrada)) {
    print(" Entrada no válida. Solo se permiten números positivos.");
    return;
  }

  print("\n Dígitos del número:");
  for (int i = 0; i < entrada.length; i++) {
    print("Dígito ${i + 1}: ${entrada[i]}");
  }

  print("\n Total de dígitos: ${entrada.length}");
}
