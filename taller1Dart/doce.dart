import 'dart:math';

void main() {
  final random = Random();
  int intentos = 0;

  while (intentos < 3) {
    int dado1 = random.nextInt(6) + 1; // 1 al 6
    int dado2 = random.nextInt(6) + 1;

    print(" Lanzamiento ${intentos + 1}: Dado 1 = $dado1, Dado 2 = $dado2");

    if (dado1 == dado2) {
      intentos++;
      if (intentos < 3) {
        print(" ¡Lanzar de nuevo!\n");
      } else {
        print(" ¡Saca una ficha!");
      }
    } else {
      print(" ¡Lanza de nuevo!");
      break; // 
    }
  }
}
