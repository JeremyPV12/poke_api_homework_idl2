import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:poke_api/config/service/pokemon.service.dart';
import 'package:poke_api/domain/model/pokemon.dart';
import 'package:poke_api/presentation/screens/capitalize.dart';
import 'package:poke_api/presentation/screens/color_by_pokemon.dart';
import 'package:poke_api/presentation/screens/pokemon_screen.dart';

class PokemonsScreen extends StatefulWidget {
  const PokemonsScreen({
    super.key
  });

  @override
  State<PokemonsScreen> createState() => PokemonsScreenState();
}

class PokemonsScreenState extends State<PokemonsScreen> {

  final PokemonService _pokemonService = PokemonService();
  late Future<List<Map<String,dynamic>>> _pokemons;

  @override
  void initState(){
    super.initState();
    _pokemons = _pokemonService.getPokemons();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String,dynamic>>>(
      future: _pokemons, 
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No Pokémon found.'));
          } else {
            List<Map<String,dynamic>> pokemons = snapshot.data!;
            return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: GestureDetector(
                    onTap: (){
                      goToPokemon(context, 
                      pokemon['image'], 
                      pokemon['name'], 
                      pokemon['types'],
                      pokemon['color'], 
                      pokemon['id'],
                      pokemon['height'],
                      pokemon['weight'],
                      pokemon['abilities'],
                      pokemon['species'],
                      pokemon['hatchCounter'],
                      pokemon['eggGroups'],
                      pokemon['gender'],
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: getColorFromName(pokemon['color']!),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:[  Text(
                                      capitalize(pokemon['name']!),
                                      style: TextStyle(
                                      fontSize: 30, 
                                      fontWeight: FontWeight.w500, 
                                      color: Colors.white,
                                      ),
                                    ),]
                                  ),
                                  for(var type in pokemon['types']!)
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Text(capitalize(type)  ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),)
                                    ],
                                  )
                                ],
                              ),
                              Image.network(pokemon['image']!,
                              width: 90,
                              height: 90,
                              )
                            ],
                          ),
                      ),
                        
                    ),
                  ),
                );
              },
            );
          }
      }
    );
  }

  void goToPokemon(BuildContext contex,
    String image, 
    String name,  
    List<String> types , 
    String color, 
    int id,
    int height,
    int weight,
    List<String> abilities,
    String species,
    int hatchCounter,
    List<String> eggGroups,
    String gender
    ){
    Future.delayed(Duration(seconds: 1),(){
      Pokemon myPokemon = Pokemon(
        image: image, 
        name : name,
        types: types, 
        color: color, 
        id : id,
        height: height,
        weight: weight,
        abilities: abilities,
        species: species,
        hatchCounter: hatchCounter,
        eggGroups: eggGroups,
        gender: gender
      );

      Navigator.of(contex)
        .push(
          MaterialPageRoute(
            builder: (contex) => PokemonScreen(pokemon: myPokemon,),
            settings: RouteSettings(arguments: myPokemon)
          )
        );
    });
  }
}






/* class SoundScreen extends StatefulWidget {
  const SoundScreen({super.key});

  @override
  State createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
  // Crea una instancia de AudioPlayer
  final AudioPlayer _audioPlayer = AudioPlayer();
  final String audio ;
  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose(); // Libera recursos cuando la pantalla se destruye
  }

  // Función para reproducir sonido
  void playSound() async {
    await _audioPlayer.play(audio);
  }

  @override
  Widget build(BuildContext context) {
    return playSound;
  }
}
 */