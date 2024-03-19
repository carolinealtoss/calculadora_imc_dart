import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerConsole(String message) {
    String? value;

    do {
      stdout.write(message);
      value = stdin.readLineSync(encoding: utf8) ?? "";
    } while (value == "");

    return value;
  }
}
