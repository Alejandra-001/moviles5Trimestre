import 'dart:js_util';
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
                            title: "SENA | CEET",
                            home: Scaffold(
                              appBar: AppBar(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue[900],
                                title: Text("Información Personal"),
                              ),
                              body: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: NetworkImage("https://cdn.pixabay.com/photo/2013/11/20/09/36/virus-213708_960_720.jpg")
                                    ),
                                    ListTile(
                                      title: Text("Maria Alejandra"),
                                      subtitle: Text("Nombres"),
                                      leading: Icon(Icons.account_circle),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("Villazon Montero"),
                                      subtitle: Text("Apellidos"),
                                      leading: Icon(Icons.badge),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("3172897823"),
                                      subtitle: Text("Celular"),
                                      leading: Icon(Icons.call),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("DISTRITO CAPITAL"),
                                      subtitle: Text("Regional"),
                                      leading: Icon(Icons.public),
                                    ),
                                    Divider(),
                                    ListTile(
                                      title: Text("CEET"),
                                      subtitle: Text("Centro de Formación"),
                                      leading: Icon(Icons.apartment),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      }