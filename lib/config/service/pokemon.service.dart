import 'package:dio/dio.dart';

class PokemonService {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2/',
      queryParameters: {
        'limit' : '20',
        'offset': '1'
      }
    )
  );


  Future<List<Map<String,dynamic>>> getPokemons() async {
    try {
      final response = await dio.get('pokemon');

      List<Map<String,dynamic>> pokemons = [];

      for (var result in response.data['results']) {
        final pokemonUrl = result['url'];

        final pokemonDetails = await dio.get(pokemonUrl);

        List<String> types = [];
        for (var type in pokemonDetails.data['types']) {
          types.add(type['type']['name']);
        }

        /* Get the color  */

        final height = pokemonDetails.data['height'];  // Altura en decímetros
        final weight = pokemonDetails.data['weight'];

        final pokemonSpeciesUrl = pokemonDetails.data['species']['url'];
        final speciesResponse = await dio.get(pokemonSpeciesUrl);
        final color = speciesResponse.data['color']['name'];

        final speciesName = speciesResponse.data['name'];

        List<String> abilities = [];
        for (var ability in pokemonDetails.data['abilities']) {
          abilities.add(ability['ability']['name']);
        }

        final hatchCounter = speciesResponse.data['hatch_counter'];

        List<String> eggGroups = [];
        for (var group in speciesResponse.data['egg_groups']) {
          eggGroups.add(group['name']);
        }


        // Obtener el género
        final genderRate = speciesResponse.data['gender_rate']; // Valor del género

        String gender = 'Unknown';
        if (genderRate == -1) {
          gender = 'Genderless';  // Pokémon sin género
        } else if (genderRate == 8) {
          gender = 'Male';  // Pokémon 100% masculino
        } else if (genderRate == 0) {
          gender = 'Female';  // Pokémon 100% femenino
        } else {
          gender = 'Both';  // Pokémon con probabilidades de ser masculino o femenino
        }


        pokemons.add({
          'id': pokemonDetails.data['id'],
          'name' : pokemonDetails.data['name'],
          'image': pokemonDetails.data['sprites']['front_default'],
          'types': types,
          'audio': pokemonDetails.data['cries']['legacy'],
          'color' : color,
          'height': height,    // Altura
          'weight': weight,    // Peso
          'abilities': abilities,
          'species': speciesName,
          'hatchCounter': hatchCounter,  // Ciclo de huevo
          'eggGroups': eggGroups,
          'gender': gender, 
        });

      }

      return pokemons;

    } catch (e) {
        return [];
    }
  }

}