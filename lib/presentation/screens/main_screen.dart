/* import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -115,
              right: -90,
              child: Image.network('https://cdn-icons-png.freepik.com/256/14823/14823174.png?semt=ais_hybrid',
              width: 300 ,
              color: Colors.blueGrey.shade100,
              fit: BoxFit.cover,
              ) ,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                    width: size.width * 1,
                    color: Colors.transparent,
                    padding:EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('My pokemons',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black54),),
                          ],
                        ),
                        SizedBox(height: 30,),

                        ListView.builder(
                          itemCount: 4,
                          itemExtent: size.width * 0.3,
                          padding: EdgeInsets.all(10),
                          itemBuilder: (context, index) {
                          return Text('$index');
                        },)                     
                      ],
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
 */


import 'package:flutter/material.dart';
import 'package:poke_api/domain/model/pokemon.dart';
import 'package:poke_api/presentation/screens/pokemons_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -115,
              right: -90,
              child: Image.network(
                'https://cdn-icons-png.freepik.com/256/14823/14823174.png?semt=ais_hybrid',
                width: 300,
                color: Colors.blueGrey.shade100,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    width: size.width * 1,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'My pokemons',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 120),
                          child: SizedBox(
                            width: size.width * 1,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: size.height*1,  // Ajusta el valor de maxHeight según tus necesidades
                              ),
                              child: PokemonsScreen(),  // Tu widget que se ajusta al tamaño disponible
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  



}
