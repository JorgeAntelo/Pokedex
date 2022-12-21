import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://pokeapi.co/api/v2/pokemon';

class GetPokemons {
  static Future<PokemonsAlbum> fetchPokemons(page) async {
    int offset = page * 20 - 20;
    final response =
        await http.get(Uri.parse('$baseUrl?offset=$offset&limit=20'));
    if (response.statusCode == 200) {
      return PokemonsAlbum.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<PokemonsAlbum> fetchSpecificPage(url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return PokemonsAlbum.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<SingularPokemonAlbum> getPokemonDetails(
      String urlToPokemon) async {
    final response = await http.get(Uri.parse(urlToPokemon));
    if (response.statusCode == 200) {
      return SingularPokemonAlbum.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}

class PokemonsAlbum {
  final int count;
  final String next;
  final previous;
  final List results;

  PokemonsAlbum(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});

  factory PokemonsAlbum.fromJson(Map<String, dynamic> json) {
    return PokemonsAlbum(
        count: json['count'],
        next: json['next'],
        previous: json['previous'],
        results: json['results']);
  }
}

class SingularPokemonAlbum {
  final int id;
  final String name;
  final sprites;
  final types;
  final weight;
  final height;

  SingularPokemonAlbum({
    required this.id,
    required this.name,
    required this.sprites,
    required this.types,
    required this.weight,
    required this.height,
  });

  factory SingularPokemonAlbum.fromJson(Map<String, dynamic> json) {
    return SingularPokemonAlbum(
      id: json['id'],
      name: json['name'],
      sprites: json['sprites'],
      types: json['types'],
      weight: json['weight'],
      height: json['height'],
    );
  }
}
