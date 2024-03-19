import 'package:projeto_calculadora_imc_dart/classes/Pessoa.dart';
import 'package:projeto_calculadora_imc_dart/services/calcula_imc.dart';
import 'package:projeto_calculadora_imc_dart/utils/console_utils.dart';
import 'package:projeto_calculadora_imc_dart/utils/parse_double_utils.dart';

void execute() {
  try {
    // pede dados e cria pessoa
    print("Seja bem vindo a Calculadora IMC");

    String nome = ConsoleUtils.lerConsole("Digite seu nome: ");
    String peso = ConsoleUtils.lerConsole("Digite seu peso (kg): ");
    String altura = ConsoleUtils.lerConsole("Digite sua altura (m): ");

    double pesoDouble = ParseDoubleUtils.parseDouble(peso);
    double alturaDouble = ParseDoubleUtils.parseDouble(altura);

    Pessoa pessoa = Pessoa(nome, pesoDouble, alturaDouble);

    // calcula imc
    double valueImc = CalculaImc.getValueImc(pessoa);
    String result = CalculaImc.getMessageResultImc(valueImc);
    print(result);
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
