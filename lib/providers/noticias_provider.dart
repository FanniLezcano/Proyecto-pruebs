import 'package:flutter/material.dart';
import 'package:remax_center/api/api_agente.dart';
import 'package:remax_center/api/api_noticias.dart';
import 'package:remax_center/modelos/noticias_modelo.dart';

class NoticiasProvider extends ChangeNotifier {
  final ApiNoticias _apiNoticias = ApiNoticias();

  List<Noticias> _noticiasList = [];

  List<Noticias> get agentesList => _noticiasList;

  Future<List<Noticias>> getNoticiasByDate() async {
    try {
      this._noticiasList = await _apiNoticias.getNoticiasByDate();
      notifyListeners();
      return _noticiasList;
    } catch (e) {
      print('Error al obtener las noticias: $e');
      return [];
    }
  }
}
