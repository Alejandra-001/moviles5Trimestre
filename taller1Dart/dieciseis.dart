import 'dart:io';

void main() {
  stdout.write("¿Cuántos números de la serie Fibonacci deseas ver?: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  if (cantidad <= 0) {
    print(" La cantidad debe ser mayor que cero.");
  } else {
    print("\n Serie Fibonacci de $cantidad términos:");
    
    int a = 0, b = 1;

    for (int i = 0; i < cantidad; i++) {
      print("$a");
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }
  }
}
