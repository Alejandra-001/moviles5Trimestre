void main() {
  print("📊 Tablas de multiplicar del 1 al 10\n");

  for (int tabla = 1; tabla <= 10; tabla++) {
    print("📌 Tabla del $tabla:");
    
    for (int i = 1; i <= 10; i++) {
      int resultado = tabla * i;
      print("$tabla × $i = $resultado");
    }

    print(""); 
  }
}
