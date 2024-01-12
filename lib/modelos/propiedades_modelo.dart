class PropiedadModelo {
  final String? id;
  final int idAgente;
  final int idDetalle;
  final int idArea;
  final int idEquipo;
  final int idDueno;
  final int idMunicipio;
  final int idColonia;
  final double precio;
  final double precioDesde;
  final double precioHasta;
  final String? moneda;
  final String? sector;
  final String? tipo;
  final String? operacion;
  final String? codigoPostal;
  final String? estado;
  final String? zona;
  final String? calle;
  final String? numeroExterior;
  final String? numeroInterior;
  final double longitud;
  final double latitud;
  final String? titulo;
  final String? caracteristicas;
  final String? manta;
  final String? estatus;
  final String? porcentaje;
  final String? clave;
  final String? llaves;
  final String? comentarios;
  final String? exclusividad;
  final String? propuesta;
  final String? ventaPendiente;
  final String? fechaRegistro;
  final String? archivada;
  final int visitas;
  final List<Imagen> imagenes;

  PropiedadModelo({
    required this.id,
    required this.idDetalle,
    required this.idAgente,
    required this.idArea,
    required this.idEquipo,
    required this.idDueno,
    required this.idMunicipio,
    required this.idColonia,
    required this.precio,
    required this.precioDesde,
    required this.precioHasta,
    this.moneda,
    this.sector,
    this.tipo,
    this.operacion,
    this.codigoPostal,
    this.estado,
    this.zona,
    this.calle,
    this.numeroExterior,
    this.numeroInterior,
    required this.longitud,
    required this.latitud,
    this.titulo,
    this.caracteristicas,
    this.manta,
    this.estatus,
    this.porcentaje,
    this.clave,
    this.llaves,
    this.comentarios,
    this.exclusividad,
    this.propuesta,
    this.ventaPendiente,
    this.fechaRegistro,
    this.archivada,
    required this.visitas,
    required this.imagenes,
  }) {
    // Validar datos de entrada si es necesario
  }

  factory PropiedadModelo.fromJson(Map<String, dynamic>? json) {
    return PropiedadModelo(
      id: json?['id'],
      idAgente: json?['idAgente'] ?? 0,
      idDetalle: json?['idDetalle'] ?? 0,
      idArea: json?['idArea'] ?? 0,
      idEquipo: json?['idEquipo'] ?? 0,
      idDueno: json?['idDueno'] ?? 0,
      idMunicipio: json?['idMunicipio'] ?? 0,
      idColonia: json?['idColonia'] ?? 0,
      precio: json?['precio']?.toDouble() ?? 0.0,
      precioDesde: json?['precioDesde']?.toDouble() ?? 0.0,
      precioHasta: json?['precioHasta']?.toDouble() ?? 0.0,
      moneda: json?['moneda'],
      sector: json?['sector'],
      tipo: json?['tipo'],
      operacion: json?['operacion'],
      codigoPostal: json?['codigoPostal'],
      estado: json?['estado'],
      zona: json?['zona'],
      calle: json?['calle'],
      numeroExterior: json?['numeroExterior'],
      numeroInterior: json?['numeroInterior'],
      longitud: json?['longitud']?.toDouble() ?? 0.0,
      latitud: json?['latitud']?.toDouble() ?? 0.0,
      titulo: json?['titulo'],
      caracteristicas: json?['caracteristicas'],
      manta: json?['manta'],
      estatus: json?['estatus'],
      porcentaje: json?['porcentaje'],
      clave: json?['clave'],
      llaves: json?['llaves'],
      comentarios: json?['comentarios'],
      exclusividad: json?['exclusividad'],
      propuesta: json?['propuesta'],
      ventaPendiente: json?['ventaPendiente'],
      fechaRegistro: json?['fechaRegistro'],
      archivada: json?['archivada'],
      visitas: json?['visitas'] ?? 0,
      imagenes: List<Imagen>.from(
        json?['imagenes']?.map((x) => Imagen.fromJson(x)) ?? [],
      ),
    );
  }
}

class Imagen {
  final int idImagen;
  final String idPropiedad;
  final String nombre;
  final String ruta;
  final dynamic propiedad;

  Imagen({
    required this.idImagen,
    required this.idPropiedad,
    required this.nombre,
    required this.ruta,
    required this.propiedad,
  });

  factory Imagen.fromJson(Map<String, dynamic>? json) {
    return Imagen(
      idImagen: json?['idImagen'] ?? 0,
      idPropiedad: json?['idPropiedad'] ?? '',
      nombre: json?['nombre'] ?? '',
      ruta: json?['ruta'] ?? '',
      propiedad: json?['propiedad'],
    );
  }
}
