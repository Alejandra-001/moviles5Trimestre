 import 'package:flutter/material.dart';
                    void main(List<String> args) {
                      runApp(Principal());  
                    }
                    class Principal extends StatelessWidget {
                      const Principal({super.key});
                      @override
                      Widget build(BuildContext context) {
                        return MaterialApp(
                          title: "FICHA| 2925960",
                          debugShowCheckedModeBanner: false,
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
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                              title: Text("FICHA - 2925960"),
                            ),
                            body: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListView.builder(          
                                itemCount: sitiosTuristicos.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    child: ListTile(
                                      leading: Icon(Icons.star),
                                      title: Text(sitiosTuristicos[index]),
                                    ),
                                  );
                                },
                              ),
                            ),      
                          );
                        }
                      }
                      List<String> sitiosTuristicos = [
  "AMAYA MARTINEZ FABIAN YESID - +57 3674417152",
  "BELTRAN BUSTOS JULIAN DANIEL - +57 3463148868",
  "BORDA ARDILA RONNY - +57 3339132784",
  "CADENA QUINTERO ALAN JAIR - +57 3857672429",
  "CAMACHO FERRUCHO CARLOS EDUARDO - +57 3980382890",
  "CASTAÑEDA LEIVA BRAYAN DAVID - +57 3380982073",
  "CORDOBA MALDONADO NICOL DAYANA - +57 3892728798",
  "CRUZ FIGUEROA OSCAR MAURICIO - +57 3660136392",
  "CUIDA ESQUIVEL SAMUEL - +57 3753413575",
  "DAZA CAMACHO JOSE DAVID - +57 3166465750",
  "ESPITIA ARENAS MAICOL STIVEN - +57 3069669682",
  "FERNANDEZ VALLEJO SHARON TATIANA - +57 3695082620",
  "HERRERA MATEUS BRAYAN STIVEN - +57 3487140980",
  "LONDOÑO CARVAJAL JUAN ESTEBAN - +57 3165778058",
  "LOZANO PANESSO EDWARD CAMILO - +57 3412544046",
  "MADRIGAL TIQUE JOHAN SNEIDER - +57 3152238143",
  "MELO CANO CRISTIAN CAMILO - +57 3574479413",
  "MENESES PARRA DAVID LEONARDO - +57 3057607921",
  "MIRANDA MORENO JOHAN DANIEL - +57 3493055606",
  "MONTEALEGRE SANCHEZ KEVIN SANTIAGO - +57 3217024034",
  "MONZON AMORTEGUI CRISTIAN DAVID - +57 3304443700",
  "MORALEZ PACHON DAVID SANTIAGO - +57 3727121409",
  "PACHECO RUEDA KEVIN LEONARDO - +57 3120202582",
  "PINZON HERNANDEZ VALENTINA - +57 3486260637",
  "TORRES TORRES MIGUEL ANGEL - +57 3370447924",
  "TUNJANO CORREA MIGUEL ANGEL - +57 3901207392",
  "VALBUENA MANCERA DIEGO ALEJANDRO - +57 3422769824",
  "VASQUEZ PRADA JOHN MICHAEL - +57 3881428122",
  "VILLAZON MONTERO MARIA ALEJANDRA - +57 3745013537",
  "ZABALETA CALDERON JOSE DAVID - +57 3610193991",
];
