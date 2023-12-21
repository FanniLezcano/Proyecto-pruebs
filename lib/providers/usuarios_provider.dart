import 'package:flutter/material.dart';
import 'package:remax_center/api/api_usuarios.dart';
import 'package:remax_center/modelos/usuarios_modelo.dart';

class UsuariosProvider extends ChangeNotifier {
  final ApiUsuarios _usuariosController = ApiUsuarios();
  List<Usuario> _usuariosList = [];

  List<Usuario> get usuariosList => _usuariosList;

  Future<void> fetchUsuarios() async {
    try {
      _usuariosList = await _usuariosController.getUsuarios();
      notifyListeners();
    } catch (e) {
      print('Error al obtener usuarios: $e');
      _usuariosList = [];
    }
  }

  Future<void> fetchUsuarioById(int id) async {
    try {
      _usuariosList = await _usuariosController.getUsuarioById(id);
      notifyListeners();
    } catch (e) {
      print('Error al obtener usuario por ID: $e');
      _usuariosList = [];
    }
  }

  Future<Usuario?> getUsuarioByLogin(String email, String contrasenia) async {
    try {
      Usuario? usuario =
          await _usuariosController.getUsuarioByLogin(email, contrasenia);
      notifyListeners();
      return usuario;
    } catch (e) {
      print('Error al obtener usuario por ID: $e');
      return null;
    }
  }

  Future<void> searchUsuarios(String name) async {
    try {
      _usuariosList = await _usuariosController.searchUsuarios(name);
      notifyListeners();
    } catch (e) {
      print('Error al buscar usuarios: $e');
      _usuariosList = [];
    }
  }

  Future<Usuario> createUsuario(Usuario usuario) async {
    try {
      await _usuariosController.createUsuario(usuario);
      _usuariosList.add(usuario);
      notifyListeners();
      return usuario;
    } catch (e) {
      print('Error al crear usuario: $e');
      throw e;
    }
  }
}
