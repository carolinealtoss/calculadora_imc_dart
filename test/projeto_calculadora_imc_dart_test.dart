import 'package:projeto_calculadora_imc_dart/classes/Pessoa.dart';
import 'package:projeto_calculadora_imc_dart/services/calcula_imc.dart';
import 'package:test/test.dart';

void main() {

  String nome = 'Ana';
  double peso = 70.0;
  double altura = 1.75;

  Pessoa mockPessoa = Pessoa(nome, peso, altura);

  group('Testes da classe Pessoa', () {
    test('Testando métodos de acesso', () {
      expect(mockPessoa.getNome(), nome);
      expect(mockPessoa.getPeso(), peso);
      expect(mockPessoa.getAltura(), altura);
    });

    test('Testando método getPessoa', () {
      expect(
          mockPessoa.getPessoa(), 'Nome: $nome, Peso: $peso, Altura: $altura');
    });
  });

  group('Testes da classe CalculaImc', () {
    test('Teste do método getValueImc()', () {
      double imcEsperado = mockPessoa.getPeso() / (mockPessoa.getAltura() * mockPessoa.getAltura());

      expect(CalculaImc.getValueImc(mockPessoa), equals(imcEsperado));
    });

    test('Teste do método getMessageResultImc()', () {
      expect(CalculaImc.getMessageResultImc(22.0),
        equals("\nResultado -> Peso normal"));

      expect(CalculaImc.getMessageResultImc(17.0),
        equals("\nResultado -> Abaixo do peso"));

      expect(CalculaImc.getMessageResultImc(27.0),
        equals("\nResultado -> Sobrepeso"));

      expect(CalculaImc.getMessageResultImc(32.0),
        equals("\nResultado -> Obesidade grau 1"));

      expect(CalculaImc.getMessageResultImc(37.0),
        equals("\nResultado -> Obesidade grau 2"));

      expect(CalculaImc.getMessageResultImc(45.0),
        equals("Obesidade grau 3"));
    });
  });

}
