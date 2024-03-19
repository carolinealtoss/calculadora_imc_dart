import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerConsoleString(String message) {
    stdout.write(message);
    return lerConsole();
  }

  static double? lerConsoleDouble(String message) {
    double? valueDouble;

    do {
      stdout.write(message);
      String value = lerConsole();
      try {
        valueDouble = double.parse(value);
      } catch (e) {
        stdout.write("Insira um valor válido");
      }
    } while (valueDouble == null);

    return valueDouble;
  }
}
