import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/agentesInmobliario.dart';

class ApiAgentesInmobiliarios {
  Future<List<AgentesInmobiliarios>> getAgentesInmobiliarios() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('agentesinmobiliarios');

      final List<AgentesInmobiliarios> agentesList = responseData
          .map((json) => AgentesInmobiliarios.fromJson(json))
          .toList();

      return agentesList;
    } catch (e) {
      print('Error al conectar a la API de Agentes Inmobiliarios: $e');
      return [];
    }
  }

  Future<AgentesInmobiliarios> createAgenteInmobiliario(
      AgentesInmobiliarios agente) async {
    try {
      final Map<String, dynamic> responseData = await ApiConnector()
          .post('agentesinmobiliarios', data: agente.toJson());

      final AgentesInmobiliarios createdAgente =
          AgentesInmobiliarios.fromJson(responseData);

      return createdAgente;
    } catch (e) {
      print('Error al crear el agente inmobiliario en la API: $e');
      throw e;
    }
  }
}
