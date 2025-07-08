import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtFechaLanz = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();
final txtColor = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA | 2925960",
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FICHA | 2925960"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: companerosFicha.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(companerosFicha[index]["foto_monumento"]),
            ),
            title: Text(companerosFicha[index]["nombre"]),
            subtitle: Text(companerosFicha[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(companerosFicha[index]["nombre"]),
                    ),
                    body: ListView(
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage:
                              NetworkImage(companerosFicha[index]["foto_monumento"]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Descripción: ${companerosFicha[index]["descripcion"]}"),
                              Divider(),
                              Text("Ubicación: ${companerosFicha[index]["ubicacion"]}"),
                              Divider(),
                              Text("Fecha nacimiento: ${companerosFicha[index]["fecha_lanzamiento"]}"),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  title: Text("Nuevo Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNombre,
                        decoration: InputDecoration(
                            labelText: "Nombre",
                            hintText: "Nombre del aprendiz",
                            icon: Icon(Icons.person)),
                      ),
                      TextFormField(
                        controller: txtDescripcion,
                        decoration: InputDecoration(
                            labelText: "Descripción",
                            hintText: "Descripción del aprendiz",
                            icon: Icon(Icons.description)),
                      ),
                      TextFormField(
                        controller: txtFechaLanz,
                        decoration: InputDecoration(
                            labelText: "Fecha de nacimiento",
                            hintText: "Ej: 2006",
                            icon: Icon(Icons.calendar_today)),
                      ),
                      TextFormField(
                        controller: txtUbicacion,
                        decoration: InputDecoration(
                            labelText: "Ubicación",
                            hintText: "Ej: Bogotá, Colombia",
                            icon: Icon(Icons.location_on)),
                      ),
                      TextFormField(
                        controller: txtFotografia,
                        decoration: InputDecoration(
                            labelText: "URL de Fotografía",
                            hintText: "https://...",
                            icon: Icon(Icons.photo)),
                      ),
                      TextFormField(
                        controller: txtColor,
                        decoration: InputDecoration(
                            labelText: "Color distintivo",
                            hintText: "Ej: Colors.green",
                            icon: Icon(Icons.color_lens)),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    if (txtNombre.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! El nombre del aprendiz está vacío")));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Se ha registrado al aprendiz: ${txtNombre.text}")));
                    }
                  },
                  child: Icon(Icons.save),
                ),
              );
            },
          );
        },
        child: Icon(Icons.person_add),
      ),
    );
  }
}

List<Map<String, dynamic>> companerosFicha = [
  {'nombre': 'FABIAN YESID AMAYA MARTINEZ',
    'descripcion': 'Estudiante comprometido con el desarrollo móvil.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.red,
    'foto_monumento': 'https://picsum.photos/id/1011/200/200'
  },
  {
    'nombre': 'JULIAN DANIEL BELTRAN BUSTOS',
    'descripcion': 'Apasionado por la tecnología y el diseño.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2005',
    'generacion': 'Z',
    'color_distintivo': Colors.blue,
    'foto_monumento': 'https://picsum.photos/id/1012/200/200'
  },
  {
    'nombre': 'RONNY BORDA ARDILA',
    'descripcion': 'Interesado en el desarrollo de videojuegos.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.green,
    'foto_monumento': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcNdEFR29DXre9LTLKm6c4tVsc8hODLXlYg&s'
  },
  {
    'nombre': 'ALAN JAIR CADENA QUINTERO',
    'descripcion': 'Especialista en backend y lógica.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2004',
    'generacion': 'Z',
    'color_distintivo': Colors.orange,
    'foto_monumento': 'https://picsum.photos/id/1016/200/200'
  },
  {
    'nombre': 'CARLOS EDUARDO CAMACHO FERRUCHO',
    'descripcion': 'Enfocado en seguridad informática.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2005',
    'generacion': 'Z',
    'color_distintivo': Colors.purple,
    'foto_monumento': 'https://picsum.photos/id/1018/200/200'
  },
  {
    'nombre': 'BRAYAN DAVID CASTAÑEDA LEIVA',
    'descripcion': 'Entusiasta del diseño UI y la fotografía.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.teal,
    'foto_monumento': 'https://picsum.photos/id/1020/200/200'
  },
  {
    'nombre': 'NICOL DAYANA CORDOBA MALDONADO',
    'descripcion': 'Creativa y con visión para el diseño gráfico.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.pink,
    'foto_monumento': 'https://picsum.photos/id/1022/200/200'
  },
  {
    'nombre': 'OSCAR MAURICIO CRUZ FIGUEROA',
    'descripcion': 'Apasionado por la innovación tecnológica.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2005',
    'generacion': 'Z',
    'color_distintivo': Colors.cyan,
    'foto_monumento': 'https://picsum.photos/id/1024/200/200'
  },
  {
    'nombre': 'SAMUEL CUIDA ESQUIVEL',
    'descripcion': 'Dedicado al desarrollo de apps móviles.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2004',
    'generacion': 'Z',
    'color_distintivo': Colors.brown,
    'foto_monumento': 'https://picsum.photos/id/1027/200/200'
  },
  {
    'nombre': 'JOSE DAVID DAZA CAMACHO',
    'descripcion': 'Fan del código limpio y estructurado.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2005',
    'generacion': 'Z',
    'color_distintivo': Colors.deepPurple,
    'foto_monumento': 'https://picsum.photos/id/1032/200/200'
  },
  {
    'nombre': 'MAICOL STIVEN ESPITIA ARENAS',
    'descripcion': 'Apasionado por sistemas distribuidos.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.indigo,
    'foto_monumento': 'https://picsum.photos/id/1033/200/200'
  },
  {
    'nombre': 'SHARON TATIANA FERNANDEZ VALLEJO',
    'descripcion': 'Creativa y enfocada en proyectos colaborativos.',
    'ubicacion': 'Colombia',
    'fecha_lanzamiento': '2006',
    'generacion': 'Z',
    'color_distintivo': Colors.lime,
    'foto_monumento': 'https://picsum.photos/id/1035/200/200'
  },
];