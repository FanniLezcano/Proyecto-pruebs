import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remax_center/modelos/propiedades_modelo.dart';
import 'package:remax_center/utiles/utiles.dart';

class PropiedadesDetalleScreen extends StatefulWidget {
  final PropiedadModelo propiedad;
  const PropiedadesDetalleScreen({super.key, required this.propiedad});
  @override
  State<PropiedadesDetalleScreen> createState() =>
      _PropiedadesDetalleScreenState();
}

class _PropiedadesDetalleScreenState extends State<PropiedadesDetalleScreen> {
  Color colorSecundario = Color.fromRGBO(220, 48, 136, 1);
  IconosListaFiltrado iconosListaFiltrado = IconosListaFiltrado();
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      height: double.infinity,
      child: Column(children: [
        Stack(children: [
          Column(
            children: [
              //APPBAR CON FONDO DE CALZADO
              Stack(
                children: [
                  // Fondo del AppBar

                  Container(
                    height: screenHeight * 0.32,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.propiedad.imagenes[0]
                              .ruta, // Agrega la ruta correcta de tu imagen
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      color: Color.fromARGB(255, 30, 30, 30).withOpacity(0.5),
                    ),
                  ),

                  // Contenido encima de la imagen del AppBar
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.020),
                    child: Container(
                      height: screenHeight * 0.10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "Propiedades");
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
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
                                  widget.propiedad.titulo,
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.040,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  widget.propiedad.calle +
                                      widget.propiedad.numeroExterior,
                                  style: TextStyle(
                                      fontSize: screenHeight * 0.018,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.050,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //CARD CON CALZADO DESCEUNTO Y DISPONIBLE
          Positioned(
            top: screenHeight * 0.240,
            left: screenWidth * 0.110,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: screenHeight * 0.120,
                width: screenWidth * 0.700,
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.7), // Cambiado a un color de fondo blanco
                  borderRadius:
                      BorderRadius.circular(20), // Ajustado el radio del borde
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // Cambiado el offset de la sombra
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20)),
                        height: screenHeight * 0.120,
                        width: screenWidth * 0.600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Precio",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text:
                                      '\$ ', // Agrega aquí el símbolo de moneda que desees
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: widget.propiedad.precio.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: screenHeight * 0.010,
        ),
        Container(
            clipBehavior: Clip.antiAlias,
            height: screenHeight * 0.230,
            width: screenWidth * 0.800,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.080,
                          vertical: screenHeight * 0.010),
                      child: Text(
                        "Datos acerca de esta propiedad",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.016,
                          fontWeight: FontWeight.bold, // Negrita para el título
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: screenHeight *
                        0.010), // Espacio entre el título y los datos
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.030),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildDataRow(
                            "Sector:",
                            widget.propiedad.sector,
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                        _buildDataRow(
                            "Tipo:",
                            widget.propiedad.tipo,
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                        _buildDataRow(
                            "Operacion:",
                            widget.propiedad.operacion,
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.red,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                        _buildDataRow(
                            "Estado:",
                            widget.propiedad.estado,
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.green,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                        _buildDataRow(
                            "Precio:",
                            widget.propiedad.precio.toString(),
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                        _buildDataRow(
                            "Moneda:",
                            widget.propiedad.moneda,
                            TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: screenHeight * 0.016),
                            screenHeight,
                            screenWidth),
                      ]),
                )
              ]),
            )),
        SizedBox(
          height: screenHeight * 0.020,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: screenHeight * 0.220,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _carouselController,
            items: [
              _buildContainer(
                  "Características",
                  widget.propiedad.caracteristicas,
                  null,
                  screenHeight,
                  screenWidth),
              _buildContainer("Visitas", widget.propiedad.visitas.toString(),
                  null, screenHeight, screenWidth),
              _buildContainer(
                  "Imagen de la propiedad",
                  "Contenido 3",
                  widget.propiedad.imagenes[0]
                      .ruta, // Agrega la ruta correcta de tu imagen
                  screenHeight,
                  screenWidth),
            ],
          ),
        ),
        _buildIndicators(screenHeight, screenWidth),
      ]),
    ));
  }

  Card _buildContainer(String titulo, String contenido, String? rutaImagen,
      double screenHeight, double screenWidth) {
    return Card(
      elevation: 10,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: screenHeight * 0.230,
        width: screenWidth * 0.900,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          color: Colors.white.withOpacity(0.2),
          border: Border.all(
              color: Colors.black, width: 0.1), // Cambia el color aquí
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                    child: Text(
                      titulo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.016,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              rutaImagen != null
                  ? SizedBox(
                      height: screenHeight * 0.140,
                      width: screenWidth * 0.550,
                      child: Image.network(
                        rutaImagen,
                        fit: BoxFit
                            .cover, // Ajusta el modo de ajuste según tus necesidades
                      ),
                    )
                  : Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.030),
                      child: Text(
                        contenido,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: screenHeight * 0.014,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String title, String value, TextStyle textStyle,
      double screenHeight, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.right, // Alinea los títulos a la derecha
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: screenHeight * 0.018),
        ),
        Text(value,
            textAlign: TextAlign.left, // Alinea los valores a la izquierda
            style: textStyle),
      ],
    );
  }

  Widget _buildIndicators(double screenHeight, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3, // Número total de contenedores en el carrusel
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: screenHeight * 0.020,
          height: screenWidth * 0.010,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index
                ? Colors.blue
                : Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
