import 'package:flutter/material.dart';
import 'package:poke_api/domain/model/pokemon.dart';
import 'package:poke_api/presentation/screens/capitalize.dart';
import 'package:poke_api/presentation/screens/color_by_pokemon.dart';

// ignore: must_be_immutable
class PokemonScreen extends StatelessWidget {

  Pokemon pokemon;
  PokemonScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getColorFromName(pokemon.color),
        title: Center(child: Text(toUpperCase(pokemon.name),style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.white 
        ),)),  
      ),
      body: SafeArea(
        child: Container(
          color: getColorFromName(pokemon.color),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          for(var type in pokemon.types)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(capitalize(type), style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),),
                          )
                        ],
                      ),
                    ),
                    Text('0${pokemon.id}',style: TextStyle(fontSize: 70, color: Colors.white),)
                  ],
                ),
                Image.network(pokemon.image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: size.width * 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:
                              [
                                Text('About',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: getColorFromName(pokemon.color)),),
                                
                              ] 
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Height :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Text('${pokemon.height}',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Weight :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Text('${pokemon.weight}',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Species :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Text(capitalize(pokemon.species),style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Abilities :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 6,),
                                    for (var abiliti in pokemon.abilities)
                                    Text(capitalize(abiliti),style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:
                              [
                                Text('Breeding',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: getColorFromName(pokemon.color)),),
                              ] 
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Gender :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Text(pokemon.gender,style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Hatch Counter :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Text('${pokemon.hatchCounter}',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Egg Group :',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 6,),
                                    for (var abiliti in pokemon.eggGroups)
                                    Text(capitalize(abiliti),style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
                                  ],
                                )
                              ],
                            ),
                          ],
                          
                        ),
                        
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}