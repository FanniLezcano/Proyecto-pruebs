import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Somos extends StatelessWidget {
  const Somos({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 9, 21, 190),
      ),
      // BARRA DE ABAJO
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 9, 21, 190),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 9, 21, 190),
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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 9, 21, 190),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(37),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(37)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: screenWidth * 0.030,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //TEXTO REMAX Y EL GLOBO
                        Text(
                          "RE/MAX",
                          style: TextStyle(
                              fontSize: screenHeight * 0.060,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),

                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5)),
                        //GLOBO
                        Container(
                          height: screenHeight * 0.080,
                          width: screenWidth * 0.080,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png"))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.010,
              ),
              Container(
                color: const Color.fromARGB(0, 0, 0, 0),
                height: screenHeight * 0.670,
                child: ListView(children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RE",
                        style: TextStyle(
                            fontSize: screenHeight * 0.030,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 206, 20, 20)),
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            fontSize: screenHeight * 0.030,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 9, 21, 190)),
                      ),
                      Text(
                        "MAX CENTER",
                        style: TextStyle(
                            fontSize: screenHeight * 0.030,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 206, 20, 20)),
                      ),
                    ],
                  )),
                  ListTile(
                    title: Text(
                      'SOBRE NOSOTROS...',
                      style: TextStyle(
                          fontSize: screenHeight * 0.020,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'No hay mayor prueba de un trabajo bien realizado que la de un cliente satisfecho, y los consumidores nos valoran año tras año, designándonos como la compañía inmobiliaria mejor valorada.',
                      style: TextStyle(fontSize: screenHeight * 0.016),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'VALORES',
                      style: TextStyle(
                          fontSize: screenHeight * 0.020,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 152, 176, 255),
                              borderRadius: BorderRadius.circular(24)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/1289/1289353.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Respeto",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 150, 151, 179),
                              borderRadius: BorderRadius.circular(24)),
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/2534/2534365.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Etica",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 152, 176, 255),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/4751/4751377.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Honestidad",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 100, 117, 146),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/748/748562.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Cortesia",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 102, 129, 250),
                              borderRadius: BorderRadius.circular(24)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/2645/2645988.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Colaboracion",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 150, 151, 179),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/2452/2452668.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Profesionalismo",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 152, 176, 255),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/8712/8712819.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Actitud",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          height: screenHeight * 0.130,
                          width: screenWidth * 0.200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 100, 117, 146),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/5024/5024479.png"),
                                height: screenHeight * 0.070,
                                width: screenWidth * 0.100,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Lealtad",
                                style: TextStyle(
                                    fontSize: screenHeight * 0.012,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'MISION',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Ser los lideres mundiales en bienes raices, alcanzando nuestras metas a traves de ayudar a otros a alcanzar las suyas. Todos ganan.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'VISION',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Ser la organizacion lider en el sureste de Mexico en la comercializacion de Bienes Raices, consolidando para ello, el mejor equipo de Vendedores Asociados certificados y de gran experencia, personal administrativo eficiente, calificado y leal, asi tambien que se cuente con la mas alta aplicacion de la tecnologia al servicio de la sociedad.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'NUESTRO EQUIPO DE TRABAJO',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'BROKER OWNER',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // DARIEN
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 6, 22, 158),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Asesor/Darien.jpg")),
                                  color: Color.fromARGB(255, 116, 138, 233),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ING. DARIEN PINZON ESTRADA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  //ICONO PUESTO
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO CORREO
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  //ICONO LLAMADA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      'ASOCIADOS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //LUCERO
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 43, 63, 241),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Asesor/Darien.jpg")),
                                  color: Color.fromARGB(255, 116, 138, 233),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ING. DARIEN PINZON ESTRADA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  // ICONO PERSONA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  //ICONO CORREO
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  //ICONO LLAMADA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //FLORENCIA
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 43, 63, 241),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Asesor/Darien.jpg")),
                                  color: Color.fromARGB(255, 116, 138, 233),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ING. DARIEN PINZON ESTRADA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  // ICONO PERSONA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO EMAIL
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO LLAMADA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 43, 63, 241),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Asesor/Darien.jpg")),
                                  color: Color.fromARGB(255, 116, 138, 233),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ING. DARIEN PINZON ESTRADA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  // ICONO PERSONA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO EMAIL
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO LLAMADA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Personal
                  ListTile(
                    title: Text(
                      'STAFF',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //MARI
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 113, 125, 238),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Asesor/Darien.jpg")),
                                  color: Color.fromARGB(255, 116, 138, 233),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "ING. DARIEN PINZON ESTRADA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  // ICONO PERSONA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO EMAIL
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  // ICONO LLAMADA
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Broker Owner",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
