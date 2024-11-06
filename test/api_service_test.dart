// test/api_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../lib/services/api_service.dart'; 

class MockClient extends Mock implements http.Client {}

void main() {
  test('Deve retornar lista de personagens com filtro aplicado', () async {
    final client = MockClient();

    when(client.get(Uri.parse('http://localhost:3000/personagens')))
        .thenAnswer((_) async => http.Response(
            jsonEncode([
              {"id": "1", "nome": "Verazza", "classe": "Magnata"},
              {"id": "2", "nome": "Legolas", "classe": "Arqueiro"}
            ]),
            200));

    final apiService = ApiService(client);
    final personagens = await apiService.fetchPersonagens();
    
    final guerreiros = personagens.where((p) => p.classe == 'Magnata').toList();
    expect(guerreiros.length, 1);
    expect(guerreiros.first.nome, 'Aragorn');
  });
}
