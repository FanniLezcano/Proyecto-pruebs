import 'package:flutter/material.dart';
import 'package:remax_center/api/api_agente.dart';
import 'package:remax_center/modelos/agentes_modelo.dart';

class AgentesProvider extends ChangeNotifier {
  final ApiAgentes _apiAgentes = ApiAgentes();

  List<AgentesModelo> _agentesList = [];

  List<AgentesModelo> get agentesList => _agentesList;

  Future<List<AgentesModelo>> getAgentes() async {
    try {
      this._agentesList = await _apiAgentes.getAgentes();
      notifyListeners();
      return _agentesList;
    } catch (e) {
      print('Error al obtener agentes: $e');
      return [];
    }
  }

  Future<List<AgentesModelo>> searchAgentes(String name) async {
    try {
      final List<AgentesModelo> searchedAgentes =
          await _apiAgentes.searchAgentes(name);
      _agentesList = searchedAgentes;
      notifyListeners();
      return _agentesList;
    } catch (e) {
      print('Error al buscar agentes: $e');
      _agentesList = [];
      notifyListeners();
      return _agentesList;
      // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }
}
