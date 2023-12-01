import 'package:flutter/material.dart';
import 'package:remax_center/screens/Asesores.dart';
import 'package:remax_center/screens/PropiedadesDetalleAlquiler.dart';
import 'package:remax_center/screens/PropiedadesDetalleVenta.dart';
import 'package:remax_center/screens/screens.dart';
import '../modelos/menuOptionModelo.dart';

class AppRoute {
  static const initialRoute = "/home";

  static final List<MenuOption> menuOptions = [
    MenuOption("home", Icons.home, "Home", Inicio()),
    MenuOption("Sesion", Icons.account_circle, "Sesión", Sesion()),
    MenuOption("SRegistro", Icons.person_add, "Registro", Registro()),
    MenuOption("SRecuperar", Icons.lock_open, "Recuperar", Recuperar()),
    MenuOption("RBienvenida", Icons.star, "Bienvenida", Bienvenida()),
    MenuOption("Asesores", Icons.people, "Asesores", Asesores()),
    MenuOption("Noticias", Icons.new_releases, "Noticias", Noticias()),
    MenuOption("Propiedades", Icons.home, "Propiedades", Propiedades()),
    MenuOption("QuiSomos", Icons.info, "Quiénes Somos", Somos()),
    MenuOption("Agente", Icons.person, "Agente", Agente()),
    MenuOption("SerAgente", Icons.work, "Ser Agente", Seragente()),
    MenuOption("Darien", Icons.location_on, "Darien", Darien()),
    MenuOption("inmueble", Icons.location_city, "Inmueble", inmueble()),
    MenuOption("Asesores2", Icons.people, "Asesores prueba", Asesores()),
    MenuOption("PropiedadesDetalleAlquiler", Icons.details, "Propiedades",
        PropiedadesDetalleAlquiler()),
    MenuOption("PropiedadesDetalleVenta", Icons.details, "Propiedades",
        PropiedadesDetalleVenta())
  ];

  // Utilizar esta definición de rutas para admitir argumentos
  static final Map<String, Widget Function(BuildContext)> routes = {
    /*
    '/home': (context) {
      // Recuperar los argumentos pasados desde el CarouselScreen
      final perfil = ModalRoute.of(context)!.settings.arguments as Perfil;

      // Crear y retornar la instancia de HomeScreen con los argumentos
      return HomeScreen(perfil: perfil);
    },   
    */

    'home': (context) => const Inicio(), //ESTA TAMBINE
    'Sesion': (context) => const Sesion(),
    'SRegistro': (context) => const Registro(),
    'SRecuperar': (context) => const Recuperar(),
    'RBienvenida': (context) => const Bienvenida(),
    'Asesores': (context) => Asesores(),
    'Noticias': (context) => const Noticias(),
    'Propiedades': (context) => const Propiedades(),
    'QuiSomos': (context) => const Somos(),
    'Agente': (context) => const Agente(),
    'SerAgente': (context) => const Seragente(),
    'Darien': (context) => const Darien(),
    'inmueble': (context) => const inmueble(),
    'Asesores2': (context) => Asesores(),
    'PropiedadesDetalleVenta': (context) => PropiedadesDetalleVenta(),
    'PropiedadesDetalleAlquiler': (context) => PropiedadesDetalleAlquiler()
  };
}
