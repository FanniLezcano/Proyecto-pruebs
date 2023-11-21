import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 255, 255, 255),
      body: Stack(
        children: [
          //FONDO
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.admagazine.com/photos/639a7791fa6c99a397fbbedb/16:9/w_2560%2Cc_limit/Casa-Pulpo%2CWorkshop-08.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(97, 0, 0, 0), BlendMode.darken))),
          ),
          //ICONO DE PERFIL
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //ICONO DE PERFIL
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.indigo[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 10,
                ),
                //IMAGEN RE/MAX HOME CENTER
                Container(
                  height: 120,
                  width: 400,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 2, 36, 95)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //TEXTO REMAX Y EL GLOBO
                      Text(
                        "RE",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 247, 21, 21)),
                      ),
                      Text(
                        "MAX",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5)),
                      //GLOBO
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png"))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                //MENSAJE DE BIENVENIDA
                Text(
                  "¡Hola, Somos RE/MAX!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "¿En que podemos ayudarte?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 20,
                ),
                //SECCIONES
                Container(
                  height: 595,
                  width: 500,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.98,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 25,
                    children: [
                      // SECCION ASESORES
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "Asesores2");
                        },
                        child: apartados(
                          title: " Asesores ",
                          assestssrc: "assets/discusion (3).png",
                        ),
                      ),
                      //SECCION NOTICIAS
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "Noticias");
                        },
                        child: apartados(
                          title: "Noticias",
                          assestssrc: "assets/periodico (2).png",
                        ),
                      ),
                      //SECCION PROPIEDADES
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "Propiedades");
                        },
                        child: apartados(
                          title: "Inmuebles",
                          assestssrc: "assets/activos.png",
                        ),
                      ),
                      //SECCION "¿QUIENES SOMOS?"
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "QuiSomos");
                        },
                        child: apartados(
                          title: "¿Quienes Somos?",
                          assestssrc: "assets/acerca-de.png",
                        ),
                      ),
                      //SECCION SOY AGENTE RE/MAX
                      GestureDetector(
                        onTap: () {},
                        child: apartados(
                          title: "Agente RE/MAX",
                          assestssrc: "assets/trabajo-en-equipo (1).png",
                        ),
                      ),
                      //SECCION QUIERO SER AGENTE
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "SerAgente");
                        },
                        child: apartados(
                          title: "Quiero ser Agente",
                          assestssrc: "assets/cv.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "inmueble");
                        },
                        child: apartados(
                          title: "Propiedades",
                          assestssrc: "assets/activo-fijo.png",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

//WIDGWT APARTADOS
class apartados extends StatelessWidget {
  final String assestssrc;
  final String title;
  const apartados({
    super.key,
    required this.assestssrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(175, 68, 69, 73),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 25,
          ),
          //IMAGENES
          Image.asset(
            assestssrc,
            height: 75,
            width: 75,
          ),
          Container(
            height: 10,
          ),
          //TEXTOS DE LOS CONTENEDORES
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
