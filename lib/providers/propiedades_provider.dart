import 'package:remax_center/api/api_propiedades.dart';
import 'package:remax_center/screens/Propiedades.dart';

class PropiedadesProvider {
  final PropiedadesController propiedadesController = PropiedadesController();
  late List<Propiedades> propiedadesList;

  Future<void> getPropiedades() async {
    try {
      propiedadesList =
          (await propiedadesController.getPropiedades()).cast<Propiedades>();
    } catch (e) {
      print('Error al obtener propiedades: $e');
      propiedadesList = [];
    }
  }

  Future<void> getPropiedadesVenta() async {
    try {
      propiedadesList = (await propiedadesController.getPropiedadesVenta())
          .cast<Propiedades>();
    } catch (e) {
      print('Error al obtener propiedades en venta: $e');
      propiedadesList = [];
    }
  }

  Future<void> getPropiedadesRenta() async {
    try {
      propiedadesList = (await propiedadesController.getPropiedadesRenta())
          .cast<Propiedades>();
    } catch (e) {
      print('Error al obtener propiedades en renta: $e');
      propiedadesList = [];
    }
  }
}
