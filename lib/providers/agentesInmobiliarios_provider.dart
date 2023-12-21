import 'package:flutter/material.dart';
import 'package:remax_center/modelos/agentesInmobliario.dart';
import 'package:remax_center/api/api_agentesInmobiliarios.dart';

class AgentesInmobiliariosProvider extends ChangeNotifier {
  final ApiAgentesInmobiliarios _apiAgentesInmobiliarios =
      ApiAgentesInmobiliarios();

  List<AgentesInmobiliarios> _agentesInmobiliariosList = [];

  List<AgentesInmobiliarios> get agentesInmobiliariosList =>
      _agentesInmobiliariosList;

  Future<void> getAgentesInmobiliarios() async {
    try {
      final List<AgentesInmobiliarios> agentesList =
          await _apiAgentesInmobiliarios.getAgentesInmobiliarios();
      _agentesInmobiliariosList = agentesList;
      notifyListeners();
    } catch (e) {
      print('Error al obtener agentes inmobiliarios: $e');
    }
  }

  Future<AgentesInmobiliarios> createAgenteInmobiliario(
      AgentesInmobiliarios agente) async {
    try {
      final AgentesInmobiliarios createdAgente =
          await _apiAgentesInmobiliarios.createAgenteInmobiliario(agente);
      _agentesInmobiliariosList.add(createdAgente);
      notifyListeners();
      return createdAgente;
    } catch (e) {
      print('Error al crear agente inmobiliario: $e');
      throw e;
    }
  }
}
