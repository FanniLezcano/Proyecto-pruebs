import 'package:flutter/material.dart';
import 'package:remax_center/routes/routes.dart';
import 'package:remax_center/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RE/MAX CENTER',
        initialRoute: "home",
        routes: AppRoute.routes);
  }
}

/*
void main() async {
  AgentesProvider agentesC = AgentesProvider();
  final List<Agentes> agentesList = await agentesC.getAgentes();

  // Puedes trabajar con la lista de objetos Agentes aquí
  for (var agente in agentesList) {
    print(
        'ID: ${agente.id}, Nombre: ${agente.nombre}, Area de servicio: ${agente.areaServicio}');
  }
}
*/
