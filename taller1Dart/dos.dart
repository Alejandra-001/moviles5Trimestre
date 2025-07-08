import 'dart:io'; // Para usar stdin

void main() {
  // Solicitar datos al usuario
  stdout.write("Ingrese su nombre: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese su sexo (Femenino/Masculino): ");
  String sexo = stdin.readLineSync()!;

  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese su salario (puede incluir centavos): ");
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Tiene vehículo? (true/false): ");
  bool tieneVehiculo = stdin.readLineSync()!.toLowerCase() == 'true';

  // Mostrar datos en pantalla
  print("\n--- Datos Ingresados ---");
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
