import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/modelos/propiedades_modelo.dart';
import 'package:remax_center/providers/propiedades_provider.dart'; // Import your propiedades provider

class PropiedadesDetalleAlquiler extends StatefulWidget {
  @override
  State<PropiedadesDetalleAlquiler> createState() =>
      _PropiedadesDetalleAlquilerState();
}

class _PropiedadesDetalleAlquilerState
    extends State<PropiedadesDetalleAlquiler> {
  PropiedadesProvider propiedadesProviderController = PropiedadesProvider();
  @override
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PropiedadesProvider(),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "PROPIEDADES RE/MAX CENTER",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
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
                    text: "Configuración",
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Fondos/fondo5.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(166, 0, 0, 0),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
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
                    stops: [0.0, 0.4, 0.9],
                  ).createShader(Rect);
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
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'RE',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent[700],
                                ),
                              ),
                              TextSpan(
                                text: '/',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 1, 127, 230),
                                ),
                              ),
                              TextSpan(
                                text: 'MAX',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Propiedades de RE/MAX en renta",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: FutureBuilder<List<PropiedadModelo>>(
                        future: propiedadesProviderController
                            .fetchPropiedadesRenta(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Center(
                                child: Text('Error: ${snapshot.error}'));
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return Center(
                                child: Text('No hay datos disponibles.'));
                          } else {
                            return ListView.builder(
                              padding: EdgeInsets.all(16),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                PropiedadModelo propiedad =
                                    snapshot.data![index];
                                return PropiedadesTile(propiedad: propiedad);
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}

class PropiedadesTile extends StatelessWidget {
  const PropiedadesTile({
    Key? key,
    required this.propiedad,
  }) : super(key: key);

  final PropiedadModelo propiedad;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(31, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // Parte superior con la imagen
            FadeInImage(
              placeholder:
                  AssetImage('assets/cargando.gif'), // Imagen de transición
              image: NetworkImage(propiedad.imagenes[0].ruta),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),

            SizedBox(height: 10),
            // Parte inferior con la información
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    propiedad.titulo,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    propiedad.calle + " " + propiedad.numeroExterior,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    propiedad.estado,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    propiedad.operacion,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    propiedad.moneda + " " + propiedad.precio.toString(),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.redAccent[700],
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'detalles',
                        arguments: {'propiedad': propiedad},
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ver detalles",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
