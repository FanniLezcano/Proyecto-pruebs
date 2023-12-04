import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Asesores extends StatelessWidget {
  const Asesores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "ASESORES RE/MAX CENTER",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      //BARRA DE INICIO, BUSCAR, COMFIGURACION
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 13, 59, 207),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 13, 59, 207),
            gap: 20,
            tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.all(10),
            tabs: [
              //INICIO
              GButton(
                icon: Icons.home,
                text: "Inicio",
                iconColor: Colors.white,
              ),
              //BUSCAR
              GButton(
                icon: Icons.search,
                text: "Buscar",
                iconColor: Colors.white,
              ),
              //CONFIGURACION
              GButton(
                icon: Icons.settings,
                text: "Configuracion",
                iconColor: Colors.white,
              )
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      //CONTENIDO DEL FONDO DE LA PANTALLA
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Fondos/fondo5.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        const Color.fromARGB(166, 0, 0, 0), BlendMode.darken))),
          ),
          //DEGRADADO DE FONDO
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
                    const Color.fromARGB(255, 152, 176, 255),
                    Color.fromARGB(255, 13, 59, 207),
                  ])),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      //TITULO REMAX
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "RE",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent[700]),
                          ),
                          Text(
                            "/",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 1, 127, 230)),
                          ),
                          Text(
                            "MAX",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent[700]),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5)),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png"))),
                          )
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      //TEXTO DE LOS ASESORES
                      Text(
                        "Los agentes inmobiliarios RE/MAX ayudan a millones de personas a comprar, rentar o vender propiedades. Contamos con casas, departamentos, oficinas, terrenos y otros inmuebles en venta y renta.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //DECORACION DE LOS BOTONES ASESORES
                      Container(
                        height: 547,
                        width: 500,
                        color: Color.fromARGB(0,0,0,0),
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 0.85,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            //ING. DARIEN
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "Darien");
                              },
                              child: asesores(
                                icon: "assets/Asesor/Darien.jpg",
                                title: "Darien Pinzon Estrada",
                                title2: "Broker Owner",
                              ),
                            ),
                            //LIC. LUCERO
                            asesores(
                              icon: "assets/Asesor/Lucero.jpg",
                              title: "Lucero Pelaez Prim",
                              title2: "Asociado",
                            ),
                            //LIC. FLORENCIA
                            asesores(
                              icon: "assets/Asesor/Florencia.jpg",
                              title: "Florencia Estrada Lazaro",
                              title2: "Asociado",
                            ),
                            //LIC. LUIS MIGUEL
                            asesores(
                              icon: "assets/Asesor/LuisMiguel.jpg",
                              title: "Luis Miguel Villa Portal",
                              title2: "Asociado",
                            ),
                            //LIC. LUIS AGUILAR
                            asesores(
                                icon: "assets/Asesor/LuisAguilarjpg.jpg",
                                title: "Luis Aguilar Ramirez",
                                title2: "Asociado"),
                            //MIGUEL ANGEL
                            asesores(
                                icon: "assets/Asesor/Miguel.jpg",
                                title: "Miguel Angel Reyes Hernandez",
                                title2: "Asociado"),
                            //LIC. ROSA
                            asesores(
                                icon: "assets/Asesor/Rosa.jpg",
                                title: "Rosa Elvia Perez Castillo",
                                title2: "Asociado"),
                            //LIC. ALEXIS
                            asesores(
                                icon: "assets/Asesor/Alexis.jpg",
                                title: "Alexis Villaverde Cruz",
                                title2: "Asociado"),
                            //LIC. MILTON
                            asesores(
                                icon: "assets/Asesor/Milton.jpg",
                                title: "Milton Alonso Najera Escamilla",
                                title2: "Asociado"),
                            //LIC. ABEL
                            asesores(
                                icon: "assets/Asesor/Abel.jpg",
                                title: "Abel Vidal Robles",
                                title2: "Asociado"),
                            //LIC. IVONNE
                            asesores(
                                icon: "assets/Asesor/Ivonne.jpg",
                                title: "Ivonne Montiel Garcia",
                                title2: "Asociado"),
                            //LIC. YANNIA
                            asesores(
                                icon: "assets/Asesor/Yannia.jpg",
                                title: "Yannia Roman Baez",
                                title2: "Asociado"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//WIDGET ASESORES
class asesores extends StatelessWidget {
  final String icon;
  final String title;
  final String title2;

  const asesores({
    super.key,
    required this.icon,
    required this.title,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(31, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          SizedBox(
            height: 22,
          ),
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  icon,
                )),
                color: Colors.indigo[100],
                shape: BoxShape.circle),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            title2,
            style: TextStyle(fontSize: 16, color: Colors.white),
          )
        ],
      ),
    );
  }
}
