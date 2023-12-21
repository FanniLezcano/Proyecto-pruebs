import 'package:remax_center/api/api_conexion.dart';
import 'package:remax_center/modelos/usuarios_modelo.dart';

class ApiUsuarios {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('usuarios');

      final List<Usuario> usuariosList =
          responseData.map((json) => Usuario.fromJson(json)).toList();

      return usuariosList;
    } catch (e) {
      print('Error al conectar a la API de usuarios: $e');
      return [];
    }
  }

  Future<List<Usuario>> getUsuarioById(int id) async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('usuarios/$id');

      final List<Usuario> agentesList =
          responseData.map((json) => Usuario.fromJson(json)).toList();

      return agentesList;
    } catch (e) {
      print('Error al conectar a la API: $e');
      return []; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<Usuario?> getUsuarioByLogin(String email, String contrasenia) async {
    try {
      final Map<String, dynamic>? responseData =
          await ApiConnector().getSingle('usuarios/$email/$contrasenia');

      if (responseData != null && responseData.isNotEmpty) {
        return Usuario.fromJson(responseData);
      } else {
        return null; // No se encontró un usuario o la respuesta es nula
      }
    } catch (e) {
      print('Error al conectar a la API: $e');
      return null; // o manejar el error de otra manera, por ejemplo, lanzando una excepción
    }
  }

  Future<List<Usuario>> searchUsuarios(String name) async {
    try {
      final List<Map<String, dynamic>> responseData =
          await ApiConnector().get('usuarios/search?name=$name');

      final List<Usuario> usuariosList =
          responseData.map((json) => Usuario.fromJson(json)).toList();

      return usuariosList;
    } catch (e) {
      print('Error al buscar usuarios en la API: $e');
      return [];
    }
  }

  Future<Usuario> createUsuario(Usuario usuario) async {
    try {
      final Map<String, dynamic> responseData =
          await ApiConnector().post('usuarios', data: usuario.toJson());

      final Usuario createdUsuario = Usuario.fromJson(responseData);

      return createdUsuario;
    } catch (e) {
      print('Error al crear usuario en la API: $e');
      throw e; // Add this line to rethrow the exception
    }
  }
}
