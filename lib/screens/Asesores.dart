import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';
import 'package:remax_center/providers/agentes_provider.dart';
import 'package:remax_center/screens/Agentes_Search.dart';

class Asesores extends StatefulWidget {
  @override
  State<Asesores> createState() => _AsesoresState();
}

class _AsesoresState extends State<Asesores> {
  AgentesProvider agentesProviderController = AgentesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "ASESORES RE/MAX CENTER",
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
                onPressed: () {
                  Navigator.pushNamed(context, 'RBienvenida');
                },
              ),
              GButton(
                icon: Icons.search,
                text: "Buscar",
                iconColor: Colors.white,
                onPressed: () =>
                    showSearch(context: context, delegate: AgentesSearch()),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    "Los agentes inmobiliarios RE/MAX ayudan a millones de personas a comprar, rentar o vender propiedades. Contamos con casas, departamentos, oficinas, terrenos y otros inmuebles en venta y renta.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: FutureBuilder<List<AgentesModelo>>(
                      future: agentesProviderController.getAgentes(),
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
                              child: Text(
                            'No hay datos disponibles.',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ));
                        } else {
                          return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 0.85,
                            ),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              final asesor = snapshot.data![index];
                              return AsesorTile(
                                  icon: asesor.foto,
                                  title: asesor.nombre + " " + asesor.apellidoM,
                                  title2: asesor.tipo,
                                  title3: asesor.especialidad,
                                  asesor: asesor);
                            },
                          );
                        }
                      },
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

class AsesorTile extends StatelessWidget {
  final AgentesModelo asesor;
  final String icon;
  final String title;
  final String title2;
  final String title3;

  const AsesorTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.title2,
      required this.title3,
      required this.asesor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'Darien', arguments: {'agentes': asesor});
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(31, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(0), // Ajusta según sea necesario
        padding: EdgeInsets.all(0), // Ajusta según sea necesario
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAlias, // Prueba con esta configuración
                child: FadeInImage(
                  placeholder: AssetImage('assets/cargando2.gif'),
                  image: icon != null
                      ? AssetImage('assets/$icon')
                      : AssetImage('assets/no_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10), // Ajusta según sea necesario
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
