import 'package:remax_center/api/api_agente.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';

class AgentesProvider {
  final AgentesController agentesController = AgentesController();
  late List<Agentes> agentesList;

  Future<void> getAgentes() async {
    try {
      agentesList = await agentesController.getAgentes();
    } catch (e) {
      print('Error al obtener agentes: $e');
      agentesList =
          []; // or handle the error in a way that makes sense for your application
    }
  }
}
