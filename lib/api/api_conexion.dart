import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiConnector {
  static const String baseUrl = 'http://crudremax.somee.com/api';

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
}
