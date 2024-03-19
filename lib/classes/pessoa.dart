class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(String nome, double peso, double altura) :
  _nome = nome, _peso = peso, _altura = altura  {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  String getPessoa() {
    return "Nome: $_nome, Peso: $_peso, Altura: $_altura";
  }
}
