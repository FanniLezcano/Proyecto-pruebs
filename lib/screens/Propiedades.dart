import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:remax_center/screens/screens.dart';

class Propiedades extends StatelessWidget {
  const Propiedades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //DECORACCION DEL APPBAR

        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 91, 124, 233),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 91, 124, 233),
              gap: 20,
              tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Inicio",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Buscar",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Configuracion",
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Fondos/fondo2.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color.fromARGB(108, 0, 0, 0), BlendMode.darken))),
            ),
            ShaderMask(
              shaderCallback: (Rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(255, 0, 0, 0),
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                    ],
                    stops: [
                      0.0,
                      0.4,
                      0.9
                    ]).createShader(Rect);
              },
              blendMode: BlendMode.dstOut,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 91, 124, 233),
                    ])),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "PROPIEDADES",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RE",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 26, 2)),
                        ),
                        Text(
                          "MAX CENTER",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                    Container(
                      height: 130,
                    ),
                    Text(
                      "Cada propiedad tiene una historia, crea la tuya con nosotros",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      height: 100,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.redAccent[700],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: TextButton(
                                onPressed: () {
                                  // Navegar a PropiedadesDetalle con propiedades de operación "Venta"
                                  Navigator.pushNamed(
                                      context, 'PropiedadesDetalleVenta');
                                },
                                child: Text(
                                  "COMPRA",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                ))),
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.redAccent[700],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: TextButton(
                                onPressed: () {
                                  // Navegar a PropiedadesDetalle con propiedades de operación "Renta"
                                  Navigator.pushNamed(
                                      context, 'PropiedadesDetalleAlquiler');
                                },
                                child: Text(
                                  "ALQUILER",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
