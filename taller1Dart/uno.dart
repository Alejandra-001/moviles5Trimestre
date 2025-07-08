void main() {
  // Declaración de variables
  String nombre = "Maria Alejandra Villazón Montero";
  String sexo = "Femenino";
  int edad = 18;
  double salario = 1530000.75;
  bool tieneVehiculo = true;

  // Impresión en pantalla
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo?: ${tieneVehiculo ? "Sí" : "No"}");
}
