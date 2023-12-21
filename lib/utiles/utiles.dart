import 'package:flutter/material.dart';

class IconosListaFiltrado {
  Widget buildPercentageCircle(String titulo, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.7),
        ),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
