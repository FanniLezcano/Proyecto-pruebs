class ImagenPropiedadModelo {
  final int idImagen;
  final String idPropiedad;
  final String nombre;
  final String ruta;

  ImagenPropiedadModelo({
    required this.idImagen,
    required this.idPropiedad,
    required this.nombre,
    required this.ruta,
  });

  factory ImagenPropiedadModelo.fromJson(Map<String, dynamic> json) {
    return ImagenPropiedadModelo(
      idImagen: json['id_imagen'],
      idPropiedad: json['id_propiedad'],
      nombre: json['nombre'],
      ruta: json['ruta'],
    );
  }
}
