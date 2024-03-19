import 'package:projeto_calculadora_imc_dart/classes/Pessoa.dart';

class CalculaImc {
  static double getValueImc(Pessoa pessoa) {
    return pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
  }

  static String getMessageResultImc(double valueImc) {
    if (valueImc < 18.5) {
      return("Abaixo do peso");
    } else if (valueImc >= 18.5 && valueImc < 24.9) {
      return("Peso normal");
    } else if (valueImc >= 25 && valueImc < 29.9) {
      return("Sobrepeso");
    } else if (valueImc >= 30 && valueImc < 34.9) {
      return("Obesidade grau 1");
    } else if (valueImc >= 35 && valueImc < 39.9) {
      return("Obesidade grau 2");
    } else {
      return("Obesidade grau 3");
    }
  }
}
