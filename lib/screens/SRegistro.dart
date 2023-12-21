import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/screens/screens.dart';

import '../modelos/usuarios_modelo.dart';
import '../providers/usuarios_provider.dart';
import 'package:uuid/uuid.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contraseniaController = TextEditingController();
  final TextEditingController _confirmarContraseniaController =
      TextEditingController();
  UsuariosProvider usuariosControllerProvider = UsuariosProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsuariosProvider(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 101, 129, 255),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
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
                            builder: (context) => Registro(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(220, 250, 0, 17)),
                        child: Text(
                          " Registro ",
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
                            builder: (context) => Sesion(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(171, 116, 99, 100)),
                        child: Text(
                          "Iniciar Sesion",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //NOMBRE
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
                                  controller: _nombreController,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.person),
                                    border: InputBorder.none,
                                    hintText: "Nombre",
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, ingrese su nombre';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        //CORREO
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
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.mail),
                                    border: InputBorder.none,
                                    hintText: "Email",
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, ingrese su correo electrónico';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),

                        SizedBox(
                          height: 10,
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
                                  controller: _contraseniaController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: "Contraseña",
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, ingrese su contraseña';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //CONFIRMACION DE CONTRASEÑA
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
                                  controller: _confirmarContraseniaController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: "Confirmar Contraseña",
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, confirme su contraseña';
                                    } else if (value !=
                                        _contraseniaController.text) {
                                      return 'Las contraseñas no coinciden';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 10,
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
                                      final usuarioNuevo = Usuario(
                                        id: Uuid()
                                            .v4(), // Genera un nuevo ID único
                                        nombre: _nombreController.text,
                                        email: _emailController.text,
                                        contrasenia:
                                            _contraseniaController.text,
                                      );
                                      Usuario user =
                                          await usuariosControllerProvider
                                              .createUsuario(usuarioNuevo);
                                      if (user != null) {
                                        // Registro exitoso
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Registro exitoso'),
                                              content: Text(
                                                  'Bienvenido ${user.nombre.toString()}'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    // Navegar a la pantalla de bienvenida
                                                    Navigator
                                                        .pushReplacementNamed(
                                                            context,
                                                            'RBienvenida');
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
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Error'),
                                              content: Text(
                                                  'Hubo un error en el registro. Por favor, inténtalo de nuevo.'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('OK'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: Text(
                                      "      Registrarte      ",
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
                      ],
                    ))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
