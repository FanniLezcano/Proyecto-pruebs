import 'package:flutter/material.dart';

class inmueble extends StatelessWidget {
  const inmueble({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "PROPIEDADES RE/MAX CENTER",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    //TITULO RE/MAX
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RE",
                          style: TextStyle(
                              fontSize: 54,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent[700]),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                              fontSize: 54,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 2, 40, 167)),
                        ),
                        Text(
                          "MAX",
                          style: TextStyle(
                              fontSize: 54,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent[700]),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5)),
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
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 330,
                      width: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/propiedase.png")), shape: BoxShape.circle),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 39, 0, 213),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "                Asesores                ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 39, 0, 213),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "                Clientes                ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
