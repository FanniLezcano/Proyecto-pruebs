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
          []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<void> searchAgentes(String name) async {
    try {
      agentesList = await agentesController.searchAgentes(name);
    } catch (e) {
      print('Error al buscar agentes: $e');
      agentesList =
          []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }
}
