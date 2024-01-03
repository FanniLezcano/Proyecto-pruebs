import 'package:flutter/material.dart';
import 'package:remax_center/api/api_propiedades.dart';
import 'package:remax_center/modelos/propiedades_modelo.dart';
import 'package:remax_center/modelos/recomendaciones_propiedades.dart';

class PropiedadesProvider extends ChangeNotifier {
  final ApiPropiedades _apiPropiedades = ApiPropiedades();

  List<PropiedadModelo> _propiedadesList = [];
  List<PropiedadModelo> _propiedadesVentaList = [];
  List<PropiedadModelo> _propiedadesRentaList = [];
  List<PropiedadModelo> _propiedadesByAsesor = [];
  List<RecomendacionPropiedadModelo> _recomendacionesPropiedadesByAsesor = [];

  List<PropiedadModelo> get propiedadesList => _propiedadesList;
  List<PropiedadModelo> get propiedadesVentaList => _propiedadesVentaList;
  List<PropiedadModelo> get propiedadesRentaList => _propiedadesRentaList;
  List<PropiedadModelo> get propiedadesByAsesor => _propiedadesRentaList;
  List<RecomendacionPropiedadModelo> get recomendacionesPropiedadesByAsesro =>
      _recomendacionesPropiedadesByAsesor;

  Future<void> fetchPropiedades() async {
    try {
      final List<PropiedadModelo> propiedadesList =
          await _apiPropiedades.getPropiedades();
      _propiedadesList = propiedadesList;
      notifyListeners();
    } catch (e) {
      print('Error al obtener propiedades: $e');
    }
  }

  Future<List<PropiedadModelo>> fetchPropiedadesVenta() async {
    try {
      this._propiedadesVentaList = await _apiPropiedades.getPropiedadesVenta();
      notifyListeners();
      return _propiedadesVentaList;
    } catch (e) {
      print('Error al obtener propiedades en venta: $e');
      return [];
    }
  }

  Future<List<PropiedadModelo>> fetchPropiedadesRenta() async {
    try {
      this._propiedadesRentaList = await _apiPropiedades.getPropiedadesRenta();
      notifyListeners();
      return _propiedadesRentaList;
    } catch (e) {
      print('Error al obtener propiedades en renta: $e');
      return [];
    }
  }

  //getPropiedadesByAsesor
  Future<List<PropiedadModelo>> getPropiedadesByAsesor(int idAgente) async {
    try {
      this._propiedadesByAsesor =
          await _apiPropiedades.getPropiedadesByAsesor(idAgente);
      notifyListeners();
      return _propiedadesByAsesor;
    } catch (e) {
      print('Error al obtener propiedades del asesor: $e');
      return [];
    }
  }

  Future<List<RecomendacionPropiedadModelo>>
      getRecomendacionesPropiedadesByAsesor(int idAgente) async {
    try {
      this._recomendacionesPropiedadesByAsesor =
          await _apiPropiedades.getRecomendacionesPropiedadesByAsesor(idAgente);
      notifyListeners();
      return _recomendacionesPropiedadesByAsesor;
    } catch (e) {
      print('Error al obtener propiedades del asesor: $e');
      return [];
    }
  }
}
