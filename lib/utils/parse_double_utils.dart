import 'package:projeto_calculadora_imc_dart/exception/parse_double_exception.dart';

class ParseDoubleUtils {
  static parseDouble(String value) {
    double? valueDouble;
    try {
      valueDouble = double.parse(value);
    } catch (e) {
      throw ParseDoubleException(e.toString());
    }

    return valueDouble;
  }
}
