import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remax_center/providers/agentes_provider.dart';
import 'package:remax_center/providers/propiedades_provider.dart';
import 'package:remax_center/providers/usuarios_provider.dart';
import 'package:remax_center/routes/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AgentesProvider()),
        ChangeNotifierProvider(create: (_) => PropiedadesProvider()),
        ChangeNotifierProvider(create: (_) => UsuariosProvider()),
        // Puedes agregar más providers según sea necesario
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RE/MAX CENTER',
      initialRoute: "home",
      routes: AppRoute.routes,
    );
  }
}
