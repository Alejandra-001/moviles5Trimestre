import 'dart:io';

void suma1() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  int resultado = a + b;
  print("Resultado (sin parámetros / sin retorno): $resultado");
}

void suma2(int a, int b) {
  int resultado = a + b;
  print("Resultado (con parámetros / sin retorno): $resultado");
}

int suma3() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  return a + b;
}


int suma4(int a, int b) {
  return a + b;
}


void main() {
  while (true) {
    print("\n MENÚ DE FUNCIONES DE SUMA");
    print("1. Sin parámetros y sin retorno de valor");
    print("2. Con parámetros y sin retorno de valor");
    print("3. Sin parámetros y con retorno de valor");
    print("4. Con parámetros y con retorno de valor");
    print("5. Salir");

    stdout.write("Seleccione una opción: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        suma1();
        break;

      case '2':
        stdout.write("Ingrese el primer número: ");
        int a = int.parse(stdin.readLineSync()!);

        stdout.write("Ingrese el segundo número: ");
        int b = int.parse(stdin.readLineSync()!);

        suma2(a, b);
        break;

      case '3':
        int resultado = suma3();
        print("Resultado (sin parámetros / con retorno): $resultado");
        break;

      case '4':
        stdout.write("Ingrese el primer número: ");
        int a = int.parse(stdin.readLineSync()!);

        stdout.write("Ingrese el segundo número: ");
        int b = int.parse(stdin.readLineSync()!);

        int resultado = suma4(a, b);
        print("Resultado (con parámetros / con retorno): $resultado");
        break;

      case '5':
        print(" Hasta luego.");
        return;

      default:
        print(" Opción inválida.");
    }
  }
}
