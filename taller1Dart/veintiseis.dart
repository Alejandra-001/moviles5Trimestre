import 'dart:io';
import 'dart:math';

void main() {
  Random dado = Random();
  int acumulado = 0;

  stdout.write("¿Cuántos jugadores participarán?: ");
  int jugadores = int.parse(stdin.readLineSync()!);

  List<String> nombres = [];

  for (int i = 0; i < jugadores; i++) {
    stdout.write("Ingrese el nombre del jugador ${i + 1}: ");
    nombres.add(stdin.readLineSync()!);
  }

  print("\n ¡Comienza el juego de Guayabita!\n");

  while (acumulado >= 0) {
    bool alguienJugo = false;

    for (int i = 0; i < jugadores; i++) {
      print(" Acumulado actual: $acumulado monedas");
      print(" Turno de: ${nombres[i]}");

      int tiro1 = dado.nextInt(6) + 1;
      print(" Primer tiro: $tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        acumulado += 1;
        print(" Perdiste. Debes colocar 1 moneda al acumulado.\n");
      } else {
        if (acumulado == 0) {
          print("No hay monedas en el acumulado para apostar. Pasas tu turno.\n");
          continue;
        }

        stdout.write(" ¿Cuánto deseas apostar? (máximo $acumulado): ");
        int apuesta = int.parse(stdin.readLineSync()!);

        if (apuesta <= 0 || apuesta > acumulado) {
          print(" Apuesta inválida. Perdiste el turno.\n");
          continue;
        }

        int tiro2 = dado.nextInt(6) + 1;
        print(" Segundo tiro: $tiro2");

        if (tiro2 > tiro1) {
          acumulado -= apuesta;
          print(" ¡Ganaste! Te llevas $apuesta monedas del acumulado.\n");
        } else {
          acumulado += apuesta;
          print(" Perdiste la apuesta. $apuesta monedas van al acumulado.\n");
        }
      }

      alguienJugo = true;

      if (acumulado == 0) {
        print(" ¡El acumulado llegó a cero! El juego ha terminado.");
        return;
      }
    }

    if (!alguienJugo) {
      print(" Nadie jugó en esta ronda. Fin del juego.");
      break;
    }
  }
}
