
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Agente extends StatelessWidget {
  const Agente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: Color.fromARGB(255, 152, 176, 255) ,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 152, 176, 255),
              gap: 20,
              tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(icon: Icons.home,
                text: "Inicio",),
                GButton(icon: Icons.search,
                text: "Buscar",),
                GButton(icon: Icons.settings,
                text: "Configuracion",)
              ],
            ),
          ),
        ),
    );
  }
}