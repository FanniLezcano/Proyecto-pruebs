import 'package:flutter/material.dart';
import 'package:remax_center/RBienvenida.dart';
import 'package:remax_center/SRecuperar.dart';
import 'package:remax_center/SRegistro.dart';

class Sesion extends StatelessWidget {
  const Sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 60, 212),
              Color.fromARGB(255, 26, 60, 212),
              Color.fromARGB(255, 26, 58, 199),
              Color.fromARGB(255, 21, 50, 182),
            
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          )
        ),
        child: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: Image.network(
                  "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png"),
            ),
            //Bienvenida a RE/MAX
            Text(
              "RE/MAX CENTER",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Sesion(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(220, 250, 0, 17)),
                    child: Text(
                      "Inicio Sesion",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Registro(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(171, 116, 99, 100)),
                    child: Text(
                      " Registrarte ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //CORREO
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
                      decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    ),
                  )),
            ),

            SizedBox(
              height: 15,
            ),

            //CONTRASEÑA
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
                        hintText: "Contraseña",
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),

            // BOTON INICIO DE SESION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.redAccent[700],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Bienvenida(),
                      ));
                    },
                    child: Text(
                      "       Iniciar Sesion       ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ))
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            //OLVIDASTE LA CONTRASEÑA

          ],
        ),
      )),
      ),
    );
  }
}
