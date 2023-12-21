class AgentesInmobiliarios {
  final String id;
  final String nombres;
  final String apellidos;
  final String genero;
  final int edad;
  final String correoElectronico;
  final String numeroCelular;
  final String nivelIngles;
  final String ubicacion;
  final String comoEnterado;
  final String interesRemax;
  final DateTime fechaRegistro;

  AgentesInmobiliarios({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.genero,
    required this.edad,
    required this.correoElectronico,
    required this.numeroCelular,
    required this.nivelIngles,
    required this.ubicacion,
    required this.comoEnterado,
    required this.interesRemax,
    required this.fechaRegistro,
  });

  factory AgentesInmobiliarios.fromJson(Map<String, dynamic> json) {
    return AgentesInmobiliarios(
      id: json['id'] ?? 0,
      nombres: json['nombres'] ?? '',
      apellidos: json['apellidos'] ?? '',
      genero: json['genero'] ?? '',
      edad: json['edad'] ?? 0,
      correoElectronico: json['correoElectronico'] ?? '',
      numeroCelular: json['numeroCelular'] ?? '',
      nivelIngles: json['nivelIngles'] ?? '',
      ubicacion: json['ubicacion'] ?? '',
      comoEnterado: json['comoEnterado'] ?? '',
      interesRemax: json['interesRemax'] ?? '',
      fechaRegistro: DateTime.parse(json['fechaRegistro'] ?? ''),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombres': nombres,
      'apellidos': apellidos,
      'genero': genero,
      'edad': edad,
      'correoElectronico': correoElectronico,
      'numeroCelular': numeroCelular,
      'nivelIngles': nivelIngles,
      'ubicacion': ubicacion,
      'comoEnterado': comoEnterado,
      'interesRemax': interesRemax,
      'fechaRegistro': fechaRegistro.toIso8601String(),
    };
  }
}
