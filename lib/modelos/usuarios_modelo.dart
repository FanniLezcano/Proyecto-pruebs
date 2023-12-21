class Usuario {
  String id;
  String nombre;
  String email;
  String contrasenia;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.contrasenia,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nombre: json['nombre'],
      email: json['email'],
      contrasenia: json['contraseña'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'email': email,
      'contraseña': contrasenia,
    };
  }
}
