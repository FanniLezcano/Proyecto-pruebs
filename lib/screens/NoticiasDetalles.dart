import 'package:flutter/material.dart';

class NoticiasDetallesScreen extends StatefulWidget {
  final String rutaImagen;
  final String descripcion;
  final String contenido;

  const NoticiasDetallesScreen({
    Key? key,
    required this.rutaImagen,
    required this.descripcion,
    required this.contenido,
  }) : super(key: key);

  @override
  State<NoticiasDetallesScreen> createState() => _NoticiasDetallesScreenState();
}

class _NoticiasDetallesScreenState extends State<NoticiasDetallesScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                // Fondo del AppBar
                Container(
                  height: screenHeight * 0.32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.rutaImagen),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Color.fromARGB(255, 30, 30, 30).withOpacity(0.5),
                  ),
                ),
                // Contenido encima de la imagen del AppBar
                Container(
                  height: screenHeight * 0.40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.030),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.descripcion,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenHeight * 0.030,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        widget.contenido,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
