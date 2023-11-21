import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Noticias extends StatefulWidget {
  const Noticias({super.key});

  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 11, 15, 240),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 11, 15, 240),
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
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/Fondos/fondo6.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child:
                // TEXTO REMAX
                Text(
              "RE/MAX",
              style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          //TEXTO CENTER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
            child: Text(
              "CENTER",
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SafeArea(
              child: Container(
            child: Column(
              children: [
                Container(
                  height: 210,
                ),
                //TITULO NOTICIAS REMAX
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NOTICIAS RE",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 26, 29, 156)),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent[700]),
                    ),
                    Text(
                      "MAX CENTER",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 26, 29, 156)),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                //CONTENIDO DONDE IRAN LAS NOTICIAS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 450,
                    width: 380,
                    color: Color.fromARGB(0, 0, 0, 0),
                    child: Stack(
                      children: [
                        PageView(
                          controller: _controller,
                          children: [
                            // 1 EVENTOS
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.redAccent[700],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "EVENTOS",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          "Contenido del evento",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //2 FACEBOOK
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.redAccent[700],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "FACEBOOK",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //3 TIKTOK
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.redAccent[700],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "TIKTOK",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //4 YOUTUBE
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.redAccent[700],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "YOUTUBE",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //5 INSTAGRAM
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.redAccent[700],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "INSTAGRAM",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(controller: _controller, count: 5)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
