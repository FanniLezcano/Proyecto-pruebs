import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/modelos/usuarios_modelo.dart';
import 'package:remax_center/providers/usuarios_provider.dart';
import 'package:remax_center/screens/screens.dart';

class Sesion extends StatefulWidget {
  const Sesion({super.key});

  @override
  State<Sesion> createState() => _SesionState();
}

class _SesionState extends State<Sesion> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();
  UsuariosProvider usuariosControllerProvider = UsuariosProvider();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsuariosProvider(),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 60, 212),
              Color.fromARGB(255, 26, 60, 212),
              Color.fromARGB(255, 26, 58, 199),
              Color.fromARGB(255, 21, 50, 182),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: SafeArea(
              child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Image.network(
                        "https://assets.stickpng.com/images/608abc9a0517f5000437cccd.png"),
                  ),
                  //Bienvenida a RE/MAX
                  Text(
                    "RE/MAX CENTER",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Sesion(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(220, 250, 0, 17)),
                          child: Text(
                            "Inicio Sesion",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Registro(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(171, 116, 99, 100)),
                          child: Text(
                            " Registrarte ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ))
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //CORREO
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    controller: _emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Por favor, introduce tu correo';
                                      }
                                      // Puedes agregar más validaciones según tus requisitos
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.mail),
                                      border: InputBorder.none,
                                      hintText: "Email",
                                    ),
                                  ),
                                )),
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          //CONTRASEÑA
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    controller: _contrasenaController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Por favor, introduce tu contraseña';
                                      }
                                      // Puedes agregar más validaciones según tus requisitos
                                      return null;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      border: InputBorder.none,
                                      hintText: "Contraseña",
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ),

                  // BOTON INICIO DE SESION
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.redAccent[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: TextButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  // El formulario es válido, puedes acceder a los valores así:
                                  String email = _emailController.text;
                                  String contrasena =
                                      _contrasenaController.text;
                                  Usuario? usuario;

                                  try {
                                    usuario = await usuariosControllerProvider
                                        .getUsuarioByLogin(email, contrasena);

                                    if (usuario != null) {
                                      // Hacer algo con el usuario
                                    } else {
                                      print('Usuario no encontrado');
                                    }
                                  } catch (e) {
                                    print('Error al obtener usuario: $e');
                                  }

                                  if (usuario != null) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(
                                              'Bienvenido ' + usuario!.nombre),
                                          content: Text(
                                              'Por favor, ingrese al sistema'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, 'RBienvenida');
                                              },
                                              child: Text('Ingresar'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Usuario no encontrado'),
                                          content: Text(
                                              'No existe el usuario. Por favor, regístrese.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                    context); // Cerrar el diálogo
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              child: Text(
                                "       Iniciar Sesion       ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                              ))),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //OLVIDASTE LA CONTRASEÑA

                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
