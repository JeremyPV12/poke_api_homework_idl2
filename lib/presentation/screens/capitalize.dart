String capitalize(String text) {
  if (text.isEmpty) {
    return text;  // Retorna vacío si el texto es vacío
  }
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}


String toUpperCase(String text) {
  if (text.isEmpty) {
    return text;  // Retorna vacío si el texto es vacío
  }
  return text.toUpperCase();
}
