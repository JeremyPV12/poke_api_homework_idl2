import 'package:flutter/material.dart';
import 'package:poke_api/domain/model/pokemon.dart';
import 'package:poke_api/presentation/screens/main_screen.dart';
import 'package:poke_api/presentation/screens/pokemon_screen.dart';

Map<String, Widget Function(BuildContext)> get appRouter{
  return{
    'main-screen' : (_) => MainScreen(),
    'pokemon' : (contex) => 
      PokemonScreen(pokemon : ModalRoute.of(contex)!.settings.arguments as Pokemon)
  };
}