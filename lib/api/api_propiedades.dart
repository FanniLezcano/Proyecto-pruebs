import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/propiedades_modelo.dart';

class PropiedadesController {
  Future<List<Propiedades>> getPropiedades() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades');

      final List<Propiedades> propiedadesList =
          responseData.map((json) => Propiedades.fromJson(json)).toList();

      return propiedadesList;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<List<Propiedades>> getPropiedadesVenta() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades');

      final List<Propiedades> propiedadesList =
          responseData.map((json) => Propiedades.fromJson(json)).toList();

      final List<Propiedades> propiedadesFiltradasVenta = propiedadesList
          .where((element) => element.operacion == "Venta")
          .toList();

      return propiedadesFiltradasVenta;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return [];
    }
  }

  Future<List<Propiedades>> getPropiedadesRenta() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('propiedades?operacion=renta');

      final List<Propiedades> propiedadesList =
          responseData.map((json) => Propiedades.fromJson(json)).toList();

      final List<Propiedades> propiedadesFiltradasRenta = propiedadesList
          .where((element) => element.operacion == "Renta")
          .toList();

      return propiedadesFiltradasRenta;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return [];
    }
  }
}
