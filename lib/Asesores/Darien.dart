import 'package:flutter/material.dart';


class Darien extends StatelessWidget {
  const Darien({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 237),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "ASESOR RE/MAX CENTER",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(78, 0, 0, 0),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Buscar",
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 179, 0, 0),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Asesor/Darien.jpg")),
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
                        SizedBox(
                          height: 20,
                        ),
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
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
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
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
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
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],//dentro de las editoriales mencionadas, nos beneficia que el hecho de haber 
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Iconos/I4 (2).png"))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Casas",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 80, 
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Iconos/I4 (3).png"))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Terrenos",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Iconos/I4 (1).png"))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Apartamentos",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Recomendaciones",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      //CONTEINER 1
                      Container(
                        height: 210,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 215,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 215,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
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
          Text(
            "Propiedades",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 215,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 215,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 215,
                        width: 195,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 189, 187, 187),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Casa"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ubicacion")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.price_check_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Precio")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}             
 
//                                X                               V                               X
//                              X X X                           V V V                           X X X
//                            X X X X X                       V V V V V                       X X X X X
//                          X X X X X X X                   V V V V V V V                   X X X X X X X
//                        X X X X X X X X X               V V V V V V V V V               X X X X X X X X X
//                      X X X X X X X X X X X           V V V V V V V V V V V           X X X X X X X X X X X
//                    X X X X X X X X X X X X X       V V V V V V V V V V V V V       X X   X   X X X   X   X X 
//                  X X X X X   X X X   X X X X X   V V V V V   V V V   V V V V V   X X X X   X X X X X   X X X X 
//                  X X X X X   X X X   X X X X X   V V V V V   V V V   V V V V V   X X X   X   X X X   X  X X X
//                  X X X X X X X X X X X X X X X   V V V V V   V V V   V V V V V   X X X X X X X X X X X X X X X
//                  X X X X X X X X X X X X X X X   V V V V V V V V V V V V V V V   X X X X X X X X X X X X X X X
//                  X X X X               X X X X   V V V V               V V V V   X X X X               X X X X 
//                    X X X X           X X X X       V V V V V V V V V V V V V       X X X X X       X X X X X 
//                      X X X X X X X X X X X           V V V V V V V V V V V           X X X X       X X X X 
//                        X X X X X X X X X               V V V V V V V V V               X X X X X X X X X 
//                              X X X                           V V V                           X X X 