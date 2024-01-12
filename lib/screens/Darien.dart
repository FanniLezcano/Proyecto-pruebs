import 'package:flutter/material.dart';
import 'package:remax_center/Agente.dart';
import 'package:remax_center/Asesores.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';
import 'package:remax_center/modelos/recomendaciones_propiedades.dart';
import 'package:remax_center/screens/Asesores.dart';

import '../modelos/propiedades_modelo.dart';
import '../providers/propiedades_provider.dart';

class Darien extends StatefulWidget {
  final AgentesModelo asesor;
  const Darien({super.key, required this.asesor});

  @override
  State<Darien> createState() => _DarienState();
}

class _DarienState extends State<Darien> {
  PropiedadesProvider propiedadesProviderController = PropiedadesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 237),
      body: SingleChildScrollView(
        child: SafeArea(
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
                        color: Color.fromARGB(255, 116, 138, 233),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: FadeInImage(
                          placeholder: AssetImage('assets/cargando2.gif'),
                          image: widget.asesor.foto != null
                              ? AssetImage('assets/${widget.asesor.foto}')
                              : AssetImage('assets/no_image.jpg'),
                          fit: BoxFit
                              .cover, // Cambiado de BoxFit.contain a BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.asesor.nombre +
                                " " +
                                widget.asesor.apellidoP +
                                " " +
                                widget.asesor.apellidoM,
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
                                widget.asesor.tipo,
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
                                widget.asesor.email,
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
                                widget.asesor.telefono,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ], //dentro de las editoriales mencionadas, nos beneficia que el hecho de haber
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
              height: 300,
              child: FutureBuilder<List<RecomendacionPropiedadModelo>>(
                future: propiedadesProviderController
                    .getRecomendacionesPropiedadesByAsesor(widget.asesor.id),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No hay datos disponibles.'));
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(16),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        RecomendacionPropiedadModelo propiedad =
                            snapshot.data![index];
                        return RecomendacionesTile(
                            precio: propiedad.precio.toString(),
                            tipo: propiedad.titulo,
                            ubicacion: propiedad.estado,
                            imagen: propiedad.imagenRuta);
                      },
                    );
                  }
                },
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
              height: 300,
              child: FutureBuilder<List<PropiedadModelo>>(
                future: propiedadesProviderController
                    .getPropiedadesByAsesor(widget.asesor.id),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No hay datos disponibles.'));
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(16),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        PropiedadModelo propiedad = snapshot.data![index];
                        return RecomendacionesTile(
                          precio: propiedad.precio.toString(),
                          tipo: propiedad.titulo ?? "No tiene título",
                          ubicacion: propiedad.estado ?? "Sin estado",
                          imagen: propiedad.imagenes.isNotEmpty
                              ? propiedad.imagenes[0].ruta
                              : "",
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class RecomendacionesTile extends StatelessWidget {
  RecomendacionesTile(
      {Key? key,
      required this.tipo,
      required this.precio,
      required this.ubicacion,
      required this.imagen})
      : super(key: key);

  String tipo;
  String precio;
  String ubicacion;
  String imagen;

  @override
  Widget build(BuildContext context) {
    String imageUrl;

    if (imagen.isNotEmpty) {
      String baseUrl =
          'https://srv1167-files.hstgr.io/5c80ede7e8c416cd/files/public_html/';
      imageUrl = baseUrl + imagen;
    } else {
      // Si la lista de imágenes está vacía, proporciona una URL predeterminada o realiza alguna acción alternativa.
      imageUrl = '';
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 210,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 190,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 189, 187, 187),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FadeInImage(
                    placeholder: AssetImage('assets/cargando.gif'),
                    image: (imagen.isNotEmpty && imagen != null)
                        ? NetworkImage(imageUrl)
                        : AssetImage('assets/no_image.jpg')
                            as ImageProvider<Object>,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      tipo,
                      maxLines: 2,
                      overflow: TextOverflow
                          .ellipsis, // Esto añade puntos suspensivos (...) al final si el texto es demasiado largo
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Text(ubicacion)
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
                  Text(precio)
                ],
              )
            ],
          ),
        ),
      ),
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
