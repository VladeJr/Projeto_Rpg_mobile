//Testes para Personagem

import 'package:flutter_test/flutter_test.dart';
import '../lib/models/personagem.dart';

void main() {
  test('Deve criar um personagem com os atributos corretos', () {
    final personagem = Personagem(id: '1', nome: 'Verazza', classe: 'Magnata');

    expect(personagem.id, '1');
    expect(personagem.nome, 'Verazza');
    expect(personagem.classe, 'Magnata');
    expect(personagem.rolagens, isEmpty);
  });
}
