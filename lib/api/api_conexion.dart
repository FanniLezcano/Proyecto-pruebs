import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiConnector {
  //static const String baseUrl = 'http://crudremax.somee.com/api';
  static const String baseUrl = 'http://administradorap-001-site1.anytempurl.com/api';
  Future<List<Map<String, dynamic>>> get(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<Map<String, dynamic>> getSingle(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      } else {
        throw Exception('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<Map<String, dynamic>> post(String endpoint,
      {required Map<String, dynamic> data}) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    try {
      print('URL: $url'); // Agregado para imprimir la URL

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          // Puedes agregar más encabezados si es necesario, como 'Authorization'
        },
        body: json.encode(data),
      );
      print(url.toString() + json.encode(data));
      print(
          'Cuerpo de la respuesta: ${response.body}'); // Agregado para imprimir el cuerpo de la respuesta

      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
