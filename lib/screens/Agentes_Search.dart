import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';
import 'package:remax_center/providers/agentes_provider.dart';

class AgentesSearch extends SearchDelegate {
  @override
  String? get searchFieldLabel => 'Buscar Asesores...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = " ";
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchResultScreen(
      query: query,
    ); // Cambia esto según tus necesidades
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SearchResultScreen(
      query: query,
    ); // Cambia esto según tus necesidades
  }
}

class SearchResultScreen extends StatefulWidget {
  String query;

  SearchResultScreen({required this.query});
  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  AgentesProvider agentesProviderController = AgentesProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AgentesProvider(),
      child: Scaffold(
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
            SizedBox(height: 20),
            Expanded(
                child: FutureBuilder<List<AgentesModelo>>(
                    future:
                        agentesProviderController.searchAgentes(widget.query),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Center(
                            child: Text('No hay datos disponibles.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22)));
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GridView.builder(
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
                              );
                            },
                          ),
                        );
                      }
                    }))
          ],
        ),
      ),
    );
  }
}

class AsesorTile extends StatelessWidget {
  final String icon;
  final String title;
  final String title2;
  final String title3;

  const AsesorTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.title2,
      required this.title3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(31, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 22),
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/no_image.jpg"),
              ),
              color: Colors.indigo[100],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10),
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
          Text(
            title3,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
