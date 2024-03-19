import 'package:projeto_calculadora_imc_dart/classes/Pessoa.dart';
import 'package:projeto_calculadora_imc_dart/services/calcula_imc.dart';
import 'package:projeto_calculadora_imc_dart/utils/console_utils.dart';

void execute() {
  try {
    // pede dados e cria pessoa
    print("Seja bem vindo a Calculadora IMC");

    String nome = ConsoleUtils.lerConsoleString("Digite seu nome: ");
    String peso = ConsoleUtils.lerConsoleString("Digite seu peso: ");
    String altura = ConsoleUtils.lerConsoleString("Digite sua altura: ");

    double pesoDouble = double.parse(peso);
    double alturaDouble = double.parse(altura);

    Pessoa pessoa = Pessoa(nome, pesoDouble, alturaDouble);

    // calcula imc
    double valueImc = CalculaImc.getValueImc(pessoa);
    String result = CalculaImc.getMessageResultImc(valueImc);
    print(result);
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
