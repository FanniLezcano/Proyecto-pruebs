import 'package:flutter/material.dart';
import 'package:remax_center/Agente.dart';
import 'package:remax_center/Asesores.dart';
import 'package:remax_center/Asesores/Darien.dart';
import 'package:remax_center/Inicio.dart';
import 'package:remax_center/Inmuebles.dart';
import 'package:remax_center/Noticias.dart';
import 'package:remax_center/Propiedades.dart';
import 'package:remax_center/QuiSomos.dart';
import 'package:remax_center/RBienvenida.dart';
import 'package:remax_center/SRecuperar.dart';
import 'package:remax_center/SRegistro.dart';
import 'package:remax_center/SerAgente.dart';
import 'package:remax_center/Sesion.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RE/MAX CENTER',
      initialRoute: "home", 
      routes: {
        //ROUTERS SECUNDARIOS, QUE ESTAN CONECTADOS AL ROUTER INICIAL 
        //CADA UNO DE ESTOS ROUTERS TIENEN UNA FUNCION PRINCIPAL ES RETENER O MAS 
        //QUE NADA CONTENER TODOS LOS WIDGETS QUE CONTIENE CADA UNA DE LAS PANTALLAS
        "home":(context) => Inicio(),
        "Sesion":(context) => Sesion(),
        "SRegistro":(context) => Registro(),
        "SRecuperar":(context) => Recuperar(),
        "RBienvenida":(context) => Bienvenida(),
        "Asesores":(context) => Asesores(),
        "Noticias":(context) => Noticias(),
        "Propiedades":(context) => Propiedades(),
        "QuiSomos":(context) => Somos(),
        "Agente":(context) => Agente(),
        "SerAgente":(context) => Seragente(),
        "Darien":(context) => Darien(),
        "inmueble":(context) => inmueble(),
      },
    );
  }  
}
