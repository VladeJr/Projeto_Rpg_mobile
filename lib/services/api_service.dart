// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/personagem.dart';

class ApiService {
  final http.Client client;

  ApiService(this.client);

  Future<List<Personagem>> fetchPersonagens() async {
    final response = await client.get(Uri.parse('http://localhost:3000/personagens'));

    if (response.statusCode == 200) {
      List<dynamic> personagensJson = jsonDecode(response.body);
      return personagensJson.map((json) => Personagem.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar personagens');
    }
  }
}
