class ParseDoubleException implements Exception {
  final String _exception;

  ParseDoubleException(String exception) : _exception = exception;

  @override
  String toString() {
    return "Erro ao converter o valor para double! $_exception";
  }
}
