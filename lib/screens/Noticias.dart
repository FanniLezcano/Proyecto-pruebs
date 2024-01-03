import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:remax_center/providers/noticias_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:remax_center/modelos/noticias_modelo.dart';

class NoticiasScreen extends StatefulWidget {
  const NoticiasScreen({super.key});

  @override
  State<NoticiasScreen> createState() => _NoticiasScreenState();
}

class _NoticiasScreenState extends State<NoticiasScreen> {
  PageController _controller = PageController();
  NoticiasProvider noticiasProviderController = NoticiasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 11, 15, 240),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 11, 15, 240),
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
                text: "Configuracion",
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
            child: Image.asset(
              "assets/Fondos/fondo6.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Text(
              "RE/MAX",
              style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
            child: Text(
              "CENTER",
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SafeArea(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 210,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "NOTICIAS RE",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 26, 29, 156)),
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent[700]),
                      ),
                      Text(
                        "MAX CENTER",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 26, 29, 156)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 420,
                      child: FutureBuilder<List<Noticias>>(
                        future: noticiasProviderController.getNoticiasByDate(),
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
                            return PageView.builder(
                              controller: _controller,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                Noticias noticia = snapshot.data![index];
                                return ContainerNoticias(
                                  rutaImgen: noticia.rutaImagen,
                                  contenido: noticia.contenido,
                                  descripcion: noticia.descripcion,
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 5, // Cambia esto por la cantidad de elementos
                    effect: WormEffect(
                      dotWidth: 8,
                      dotHeight: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerNoticias extends StatefulWidget {
  String rutaImgen;
  String descripcion;
  String contenido;

  ContainerNoticias(
      {required this.rutaImgen,
      required this.contenido,
      required this.descripcion});

  @override
  State<ContainerNoticias> createState() => _ContainerNoticiasState();
}

class _ContainerNoticiasState extends State<ContainerNoticias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.redAccent[700],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "NOTICIAS",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FadeInImage(
                    placeholder: AssetImage('assets/cargando2.gif'),
                    image: widget.rutaImgen != null
                        ? NetworkImage(widget.rutaImgen)
                            as ImageProvider<Object> // Especificar el tipo aquí
                        : AssetImage('assets/no_image.jpg')
                            as ImageProvider<Object>, // También aquí
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.descripcion,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.contenido.substring(0, 150) + "...",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'noticiasDetalle',
                        arguments: {
                          'rutaImagen': widget.rutaImgen,
                          'descripcion': widget.descripcion,
                          'contenido': widget.contenido,
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Text(
                        "Ver",
                        style: TextStyle(color: Colors.red),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
