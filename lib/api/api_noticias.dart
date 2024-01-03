import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/noticias_modelo.dart';

class ApiNoticias {
  Future<List<Noticias>> getNoticiasByDate() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('noticias/bydate');

      final List<Noticias> noticiasList =
          responseData.map((json) => Noticias.fromJson(json)).toList();

      return noticiasList;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }
}
