import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:remax_center/screens/screens.dart';

class Seragente extends StatelessWidget {
  const Seragente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(9, 9, 44, 0.965),
        bottomNavigationBar: Container(
          color: Color.fromRGBO(9, 9, 44, 0.965),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: GNav(
              backgroundColor: Color.fromRGBO(9, 9, 44, 0.965),
              gap: 20,
              tabBackgroundColor: Color.fromRGBO(255, 255, 255, 0.965),
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Inicio",
                  iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.search,
                  text: "Buscar",
                  iconColor: Colors.white,
                ),
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
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //TEXTO REMAX Y EL GLOBO
                          Text(
                            "RE",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
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
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "¡UNETE A NUESTRO EQUIPO DE TRABAJO!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 675,
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text(
                            "Somos la empresa que más Bienes Raíces vende en el mundo y tú puedes ser parte de ella. Intégrate a nuestra Red de Asesores Inmobiliarios y transforma tu vida y la de muchas personas.",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              //nombre
                              Text(
                                "Nombre(s)",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //nombre
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText: "Nombre(s)",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //APELLIDOS
                              Text(
                                "Apellidos",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //apellidos
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText: "Apellidos",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //Genero y edad
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Genero:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Text(
                                    "Edad:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                        width: 174,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              icon: Icon(Icons.lock),
                                              border: InputBorder.none,
                                              hintText: "Genero",
                                            ),
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: SizedBox(
                                        width: 174,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              icon: Icon(Icons.lock),
                                              border: InputBorder.none,
                                              hintText: "Edad",
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //correo
                              Text(
                                "Correo Electronico:",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //correo
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText: "Correo Electronico",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //celular
                              Text(
                                "Numero de Celular:",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //celular
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText: "Celular",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //Nivel de ngles
                              Text(
                                "¿Que nivel consideras tener para el Idioma Inglés?",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //nivel de ingles
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText: "Nivel de Ingles",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //donde vives
                              Text(
                                "¿En qué parte de la ciudad vives?",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //donde vives
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText:
                                              "¿En qué parte de la ciudad vives?",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //sobre nosotros
                              Text(
                                "¿Cómo te enteraste de nosotros?",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //Sobre nosotros
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText:
                                              "¿Cómo te enteraste de nosotros?",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ////Interes en re/max
                              Text(
                                "Platícanos sobre tu interés en unirte a RE/MAX",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              //Interes en re/max
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          border: InputBorder.none,
                                          hintText:
                                              "Platícanos sobre tu interés en unirte a RE/MAX",
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 100),
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent[700],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  Bienvenida(),
                                            ));
                                          },
                                          child: Text(
                                            "       Postulate       ",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromARGB(
                                                    255, 255, 255, 255)),
                                          ))),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
