class RecomendacionPropiedadModelo {
  final String id;
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
  final String moneda;
  final String sector;
  final String tipo;
  final String operacion;
  final String codigoPostal;
  final String estado;
  final String zona;
  final String calle;
  final String numeroExterior;
  final String numeroInterior;
  final double longitud;
  final double latitud;
  final String titulo;
  final String caracteristicas;
  final String manta;
  final String estatus;
  final String porcentaje;
  final String clave;
  final String llaves;
  final String comentarios;
  final String exclusividad;
  final String propuesta;
  final String ventaPendiente;
  final String fechaRegistro;
  final String archivada;
  final int visitas;
  final String imagenRuta;

  RecomendacionPropiedadModelo({
    required this.id,
    required this.idAgente,
    required this.idDetalle,
    required this.idArea,
    required this.idEquipo,
    required this.idDueno,
    required this.idMunicipio,
    required this.idColonia,
    required this.precio,
    required this.precioDesde,
    required this.precioHasta,
    required this.moneda,
    required this.sector,
    required this.tipo,
    required this.operacion,
    required this.codigoPostal,
    required this.estado,
    required this.zona,
    required this.calle,
    required this.numeroExterior,
    required this.numeroInterior,
    required this.longitud,
    required this.latitud,
    required this.titulo,
    required this.caracteristicas,
    required this.manta,
    required this.estatus,
    required this.porcentaje,
    required this.clave,
    required this.llaves,
    required this.comentarios,
    required this.exclusividad,
    required this.propuesta,
    required this.ventaPendiente,
    required this.fechaRegistro,
    required this.archivada,
    required this.visitas,
    required this.imagenRuta,
  });

  factory RecomendacionPropiedadModelo.fromJson(Map<String, dynamic> json) {
    return RecomendacionPropiedadModelo(
        id: json['id'],
        idAgente: json['idAgente'],
        idDetalle: json['idDetalle'],
        idArea: json['idArea'],
        idEquipo: json['idEquipo'],
        idDueno: json['idDueno'],
        idMunicipio: json['idMunicipio'],
        idColonia: json['idColonia'],
        precio: json['precio'].toDouble(),
        precioDesde: json['precioDesde'].toDouble(),
        precioHasta: json['precioHasta'].toDouble(),
        moneda: json['moneda'],
        sector: json['sector'],
        tipo: json['tipo'],
        operacion: json['operacion'],
        codigoPostal: json['codigoPostal'],
        estado: json['estado'],
        zona: json['zona'],
        calle: json['calle'],
        numeroExterior: json['numeroExterior'],
        numeroInterior: json['numeroInterior'],
        longitud: json['longitud'].toDouble(),
        latitud: json['latitud'].toDouble(),
        titulo: json['titulo'],
        caracteristicas: json['caracteristicas'],
        manta: json['manta'],
        estatus: json['estatus'],
        porcentaje: json['porcentaje'],
        clave: json['clave'],
        llaves: json['llaves'],
        comentarios: json['comentarios'],
        exclusividad: json['exclusividad'],
        propuesta: json['propuesta'],
        ventaPendiente: json['ventaPendiente'],
        fechaRegistro: json['fechaRegistro'],
        archivada: json['archivada'],
        visitas: json['visitas'],
        imagenRuta: json['imagenRuta']);
  }
}
