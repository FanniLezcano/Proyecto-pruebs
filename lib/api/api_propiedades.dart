import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/propiedades_modelo.dart';
import 'package:remax_center/modelos/recomendaciones_propiedades.dart';

class ApiPropiedades {
  Future<List<PropiedadModelo>> getPropiedades() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades');

      final List<PropiedadModelo> propiedadesList =
          responseData.map((json) => PropiedadModelo.fromJson(json)).toList();

      return propiedadesList;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<List<PropiedadModelo>> getPropiedadesByAsesor(int idAgente) async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades');

      final List<PropiedadModelo> propiedadList =
          responseData.map((json) => PropiedadModelo.fromJson(json)).toList();

      final List<PropiedadModelo> propiedadesByAsesor = propiedadList
          .where((element) => element.idAgente == idAgente)
          .toList();
      return propiedadesByAsesor;
    } catch (e) {
      print('Error al intentar traer las propiedades del asesor \n" + $e');
      return [];
    }
  }

  Future<List<RecomendacionPropiedadModelo>>
      getRecomendacionesPropiedadesByAsesor(int idAgente) async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('recomendacionespropiedades');

      final List<RecomendacionPropiedadModelo> propiedadList = responseData
          .map((json) => RecomendacionPropiedadModelo.fromJson(json))
          .toList();

      final List<RecomendacionPropiedadModelo> propiedadesByAsesor =
          propiedadList
              .where((element) => element.idAgente == idAgente)
              .toList();
      return propiedadesByAsesor;
    } catch (e) {
      print('Error al intentar traer las propiedades del asesor \n" + $e');
      return [];
    }
  }

  Future<List<PropiedadModelo>> getPropiedadesVenta() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades');

      final List<PropiedadModelo> propiedadesList =
          responseData.map((json) => PropiedadModelo.fromJson(json)).toList();

      final List<PropiedadModelo> propiedadesFiltradasVenta = propiedadesList
          .where((element) => element.operacion == "Venta")
          .toList();

      return propiedadesFiltradasVenta;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return [];
    }
  }

  Future<List<PropiedadModelo>> getPropiedadesRenta() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades?operacion=renta');

      final List<PropiedadModelo> propiedadesList =
          responseData.map((json) => PropiedadModelo.fromJson(json)).toList();

      final List<PropiedadModelo> propiedadesFiltradasRenta = propiedadesList
          .where((element) => element.operacion == "Renta")
          .toList();

      return propiedadesFiltradasRenta;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return [];
    }
  }
}
