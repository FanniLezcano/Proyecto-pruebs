import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';

class ApiAgentes {
  Future<List<AgentesModelo>> getAgentes() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('agentes');

      final List<AgentesModelo> agentesList =
          responseData.map((json) => AgentesModelo.fromJson(json)).toList();

      return agentesList;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<List<AgentesModelo>> searchAgentes(String name) async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('agentes/search?name=$name');

      final List<AgentesModelo> agentesList =
          responseData.map((json) => AgentesModelo.fromJson(json)).toList();

      return agentesList;
    } catch (e) {
      print('Error al buscar agentes en la API: $e');
      return [];
    }
  }
}
