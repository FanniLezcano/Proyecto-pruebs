import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/modelos/agentesInmobliario.dart';
import 'package:remax_center/providers/agentesInmobiliarios_provider.dart';
import 'package:remax_center/screens/screens.dart';
import 'package:uuid/uuid.dart';

class Seragente extends StatefulWidget {
  const Seragente({super.key});

  @override
  State<Seragente> createState() => _SeragenteState();
}

class _SeragenteState extends State<Seragente> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidosController = TextEditingController();
  TextEditingController _generoController = TextEditingController();
  TextEditingController _edadController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _celularController = TextEditingController();
  TextEditingController _nivelInglesController = TextEditingController();
  TextEditingController _ubicacionController = TextEditingController();
  TextEditingController _comoConocioController = TextEditingController();
  TextEditingController _interesController = TextEditingController();
  AgentesInmobiliariosProvider agentesInmobiliariosProvider =
      AgentesInmobiliariosProvider();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => AgentesInmobiliariosProvider(),
      child: Scaffold(
          backgroundColor: Color.fromRGBO(9, 9, 44, 0.965),
          bottomNavigationBar: Container(
            color: Color.fromRGBO(9, 9, 44, 0.965),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: GNav(
                backgroundColor: Color.fromRGBO(9, 9, 44, 0.965),
                gap: 20,
                tabBackgroundColor: Color.fromRGBO(255, 255, 255, 0.965),
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //TEXTO REMAX Y EL GLOBO
                              Text(
                                "RE",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                              ),
                              Text(
                                "/",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 247, 21, 21)),
                              ),
                              Text(
                                "MAX",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5)),
                              //GLOBO
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
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "¡UNETE A NUESTRO EQUIPO DE TRABAJO!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          height: size.height * 0.70 - 30,
                          child: Form(
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Somos la empresa que más Bienes Raíces vende en el mundo y tú puedes ser parte de ella. Intégrate a nuestra Red de Asesores Inmobiliarios y transforma tu vida y la de muchas personas.",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        "Nombre(s)",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _nombreController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText: "Nombre(s)",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su Nombre';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Apellidos",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _apellidosController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText: "Apellidos",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su Apellido';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Genero:",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 150),
                                          Text(
                                            "Edad:",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: SizedBox(
                                              width: 174,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: TextFormField(
                                                  controller: _generoController,
                                                  decoration: InputDecoration(
                                                    icon: Icon(Icons.lock),
                                                    border: InputBorder.none,
                                                    hintText: "Genero",
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Por favor, ingrese su Genero';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: SizedBox(
                                              width: 174,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: TextFormField(
                                                  controller: _edadController,
                                                  decoration: InputDecoration(
                                                    icon: Icon(Icons.lock),
                                                    border: InputBorder.none,
                                                    hintText: "Edad",
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Por favor, ingrese su Edad';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Correo Electronico:",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _emailController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText: "Correo Electronico",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su Correo';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Numero de Celular:",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _celularController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText: "Celular",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su Celular';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "¿Que nivel consideras tener para el Idioma Inglés?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller:
                                                  _nivelInglesController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText: "Nivel de Ingles",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su nivel';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "¿En qué parte de la ciudad vives?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _ubicacionController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText:
                                                    "¿En qué parte de la ciudad vives?",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese su ciudad';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "¿Cómo te enteraste de nosotros?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller:
                                                  _comoConocioController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText:
                                                    "¿Cómo te enteraste de nosotros?",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese información';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Platícanos sobre tu interés en unirte a RE/MAX",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: TextFormField(
                                              controller: _interesController,
                                              decoration: InputDecoration(
                                                icon: Icon(Icons.lock),
                                                border: InputBorder.none,
                                                hintText:
                                                    "Platícanos sobre tu interés en unirte a RE/MAX",
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Por favor, ingrese información';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 100),
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent[700],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: TextButton(
                                              onPressed: () async {
                                                final agenteNuevo =
                                                    AgentesInmobiliarios(
                                                        id: Uuid().v4(),
                                                        nombres:
                                                            _nombreController
                                                                .text,
                                                        apellidos:
                                                            _apellidosController
                                                                .text,
                                                        correoElectronico:
                                                            _emailController
                                                                .text,
                                                        comoEnterado:
                                                            _comoConocioController
                                                                .text,
                                                        edad: int.parse(
                                                            _edadController
                                                                .text), // Convierte a entero
                                                        fechaRegistro:
                                                            DateTime.now(),
                                                        genero: _generoController
                                                            .text,
                                                        interesRemax:
                                                            _interesController
                                                                .text,
                                                        nivelIngles:
                                                            _nivelInglesController
                                                                .text,
                                                        numeroCelular:
                                                            _celularController
                                                                .text,
                                                        ubicacion:
                                                            _ubicacionController
                                                                .text);
                                                AgentesInmobiliarios
                                                    agenteCreado =
                                                    await agentesInmobiliariosProvider
                                                        .createAgenteInmobiliario(
                                                            agenteNuevo);

                                                if (agenteCreado != null) {
                                                  // Registro exitoso
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Registro exitoso'),
                                                        content: Text(
                                                            'Se ha registrado como agente ${agenteCreado.nombres.toString()}'),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              // Navegar a la pantalla de bienvenida
                                                              Navigator.pop(
                                                                  context);
                                                              clearTextControllers();
                                                            },
                                                            child: Text('OK'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  // Manejar el caso de registro fallido (puedes mostrar otro AlertDialog o un Toast, por ejemplo)
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text('Error'),
                                                        content: Text(
                                                            'Hubo un error en el registro. Por favor, inténtalo de nuevo.'),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Text('OK'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 5),
                                                child: Text(
                                                  "Postulate",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  void clearTextControllers() {
    _nombreController.clear();
    _apellidosController.clear();
    _generoController.clear();
    _edadController.clear();
    _emailController.clear();
    _celularController.clear();
    _nivelInglesController.clear();
    _ubicacionController.clear();
    _comoConocioController.clear();
    _interesController.clear();
  }
}
