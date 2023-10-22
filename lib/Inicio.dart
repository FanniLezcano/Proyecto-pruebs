import 'package:flutter/material.dart';
import 'package:remax_center/Sesion.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Fondos/Fondo1.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken))),
          child: Stack(
            children: <Widget>[
              Center(
                child: Text("RE/MAX",
                    style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: -7)),
              ),
              Center(
                  child: const Text(
                "CENTER",
                style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: -5.8),
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: Image.network(
                      "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png",
                      width: MediaQuery.of(context).size.width / 2,
                      height: 200,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  //Decoracion de Texto de Bienvenida
                  const Text(
                    "Cada propiedad tiene una",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    "historia, crea la tuya con",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    "nosotros.",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  //Decoracion del Boton
                  FloatingActionButton.extended(
                    //Declaracion para pasar a otra pantalla
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Sesion()));
                    },
                    label: const Text(
                      "   Bienvenido   ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                    backgroundColor: Colors.redAccent[700],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
