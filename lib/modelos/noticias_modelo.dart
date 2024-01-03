class Noticias {
  String id;
  String rutaImagen;
  String descripcion;
  String contenido;
  DateTime fechaPublicacion;

  Noticias({
    required this.id,
    required this.rutaImagen,
    required this.descripcion,
    required this.contenido,
    required this.fechaPublicacion,
  });

  factory Noticias.fromJson(Map<String, dynamic> json) {
    return Noticias(
      id: json['id'],
      rutaImagen: json['rutaImagen'],
      descripcion: json['descripcion'],
      contenido: json['contenido'],
      fechaPublicacion: DateTime.parse(json['fechaPublicacion']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'rutaImagen': rutaImagen,
      'descripcion': descripcion,
      'contenido': contenido,
      'fechaPublicacion': fechaPublicacion.toIso8601String(),
    };
  }
}
