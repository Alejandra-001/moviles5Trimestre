
                    import 'package:flutter/material.dart';
                    void main(List<String> args) {
                      runApp(Principal());
                    }
                    class Principal extends StatelessWidget {
                      const Principal({super.key});
                      @override
                      Widget build(BuildContext context) {
                        return MaterialApp(
                          debugShowCheckedModeBanner: false,
                          title: "FICHA| 2925960",
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
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            title: Text("FICHA | 2925960"),
                          ),
                          body: ListView.builder(
                            itemCount: companerosFicha.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                trailing: Icon(Icons.arrow_circle_right_outlined),
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(companerosFicha[index]["foto_monumento"]),
                                ),
                                title: Text(companerosFicha[index]["nombre"]),
                                subtitle: Text(companerosFicha[index]["ubicacion"] +
                                    " " +
                                    companerosFicha[index]["fecha_lanzamiento"]),
                                onTap: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return Scaffold(
                                          appBar: AppBar(
                                            backgroundColor: companerosFicha[index]
                                                ["color_distintivo"],
                                            title: Text(companerosFicha[index]["nombre"]),
                                          ),
                                          body: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: ListView(
                                              children: [
                                                CircleAvatar(
                                                  radius: 100,
                                                  backgroundImage: NetworkImage(
                                                      companerosFicha[index]["foto_monumento"]),
                                                ),
                                                Text(companerosFicha[index]["descripcion"]),
                                                Divider(),
                                                Text(companerosFicha[index]["ubicacion"]),
                                                Divider(),
                                                Text(companerosFicha[index]["fecha_lanzamiento"]),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        }
                      }
                      List<Map<String, dynamic>> companerosFicha = [
  {
    'nombre': 'FABIAN YESID AMAYA MARTINEZ',
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
