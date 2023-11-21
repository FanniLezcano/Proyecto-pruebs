import 'dart:convert';

class Agentes {
  int id;
  String nombre;
  String apellidoM;
  String apellidoP;
  String usuario;
  String contrasena;
  String sexo;
  String telefono;
  String celular;
  String email;
  String nivel;
  String tipo;
  String acercaDe;
  String foto;
  String areaServicio;
  String especialidad;
  DateTime fechaNacimiento;
  DateTime unionRemax;

  Agentes({
    required this.id,
    required this.nombre,
    required this.apellidoM,
    required this.apellidoP,
    required this.usuario,
    required this.contrasena,
    required this.sexo,
    required this.telefono,
    required this.celular,
    required this.email,
    required this.nivel,
    required this.tipo,
    required this.acercaDe,
    required this.foto,
    required this.areaServicio,
    required this.especialidad,
    required this.fechaNacimiento,
    required this.unionRemax,
  });

  factory Agentes.fromJson(Map<String, dynamic> json) => Agentes(
        id: json["id"],
        nombre: json["nombre"],
        apellidoM: json["apellidoM"],
        apellidoP: json["apellidoP"],
        usuario: json["usuario"],
        contrasena: json["contrasena"],
        sexo: json["sexo"],
        telefono: json["telefono"],
        celular: json["celular"],
        email: json["email"],
        nivel: json["nivel"],
        tipo: json["tipo"],
        acercaDe: json["acercaDe"],
        foto: json["foto"],
        areaServicio: json["areaServicio"],
        especialidad: json["especialidad"],
        fechaNacimiento: DateTime.parse(json["fechaNacimiento"]),
        unionRemax: DateTime.parse(json["unionRemax"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "apellidoM": apellidoM,
        "apellidoP": apellidoP,
        "usuario": usuario,
        "contrasena": contrasena,
        "sexo": sexo,
        "telefono": telefono,
        "celular": celular,
        "email": email,
        "nivel": nivel,
        "tipo": tipo,
        "acercaDe": acercaDe,
        "foto": foto,
        "areaServicio": areaServicio,
        "especialidad": especialidad,
        "fechaNacimiento": fechaNacimiento.toIso8601String(),
        "unionRemax": unionRemax.toIso8601String(),
      };
}
