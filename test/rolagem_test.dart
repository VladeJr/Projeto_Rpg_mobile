//Testes de Rolagem de Dados

import 'package:flutter_test/flutter_test.dart';
import '../lib/models/personagem.dart';
import '../lib/models/rolagem_dados.dart';

void main() {
  test('Deve adicionar uma rolagem a um personagem', () {
    final rolagem = RolagemDados(id: '1', numeroDados: 2, numeroFaces: 6);
    final personagem = Personagem(id: '1', nome: 'Aragorn', classe: 'Guerreiro', rolagens: [rolagem]);

    expect(personagem.rolagens.length, 1);
    expect(personagem.rolagens.first.numeroDados, 2);
    expect(personagem.rolagens.first.numeroFaces, 6);
  });
}
