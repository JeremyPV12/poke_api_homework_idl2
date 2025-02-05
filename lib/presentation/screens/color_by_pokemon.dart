import 'package:flutter/material.dart';

Color getColorFromName(String colorName) {
  switch (colorName) {
    case 'red':
      return Color(0xFFFB6D6C);
    case 'blue':
      return Color(0xFF74BEFF);
    case 'green':
      return Color(0xFF49D0B0);
    case 'yellow':
      return Color(0xFFFFD86F);
    case 'purple':
      return Color(0xFFBB8FF0);
    case 'brown':
      return Color(0xFFD2B48C);
    case 'gray':
      return Color(0xFFB0BEC5); 
    case 'black':
      return Colors.black;
    default:
      return Colors.grey;  // Fallback en caso de que el color no esté listado
  }
}
