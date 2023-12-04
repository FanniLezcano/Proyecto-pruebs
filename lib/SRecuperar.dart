import 'package:flutter/material.dart';

class Recuperar extends StatelessWidget {
  const Recuperar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: MediaQuery.of(context).size.width,
          decoration:
              BoxDecoration(image: 
              DecorationImage(image: NetworkImage("https://media.admagazine.com/photos/6345fd77052e230ddc179383/16:9/w_2560%2Cc_limit/CasaSC_rear%2520thru%2520arch.JPG"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(const Color.fromARGB(132, 0, 0, 0), BlendMode.darken))),
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
              height: 15,
            ),
            Text("¿Olvidaste tu Contraseña?",
            style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 199, 19, 19)),),

            SizedBox(
              height: 15,
            ),
            Text("Ingresa tu Gmail para poder ayudarte",
            style: TextStyle(fontSize: 18, 
            color: const Color.fromARGB(255, 255, 255, 255)),),
            Text("con la recuperacion de tu contraseña.",
            style: TextStyle(fontSize: 18, 
            color: const Color.fromARGB(255, 255, 255, 255)),),
            SizedBox(
              height: 25,
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

            // BOTON DE RECUPERACION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 17, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Recuperar",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      )),
      )
    );
  }
}