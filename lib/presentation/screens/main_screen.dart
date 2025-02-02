/* import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemones'),
      ),
      body: SafeArea(
        child: Text('Hola')
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://cdn-icons-png.freepik.com/256/14823/14823174.png?semt=ais_hybrid'),
          ],
        )
      ),
    );
  }
} */


import 'package:flutter/material.dart';

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
            SafeArea(
              child: SingleChildScrollView(
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
                          Wrap(
                            runSpacing: 20,
                            spacing: 10,
                            children: [
                              Container(
                                width: size.width *0.43,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amberAccent
                                ),
                              ),
                              Container(
                                width: size.width *0.43,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amberAccent
                                ),
                              ),
                              
                            ],
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/* import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen fija en la parte superior derecha
          Positioned(
            top: 20, // Puedes ajustar la distancia desde la parte superior
            right: 20, // Puedes ajustar la distancia desde la parte derecha
            child: Image.network(
              'https://cdn-icons-png.freepik.com/256/14823/14823174.png?semt=ais_hybrid',
              width: 100,  // Ajusta el tamaño de la imagen
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          // Contenido desplazable
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20), // Espacio superior para que no se cubra el contenido
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        // Slider de Pokémon (puedes agregar aquí el slider real)
                        Text(
                          'Slider de Pokémon',
                          style: TextStyle(fontSize: 24),
                        ),
                        // Aquí puedes agregar tu slider de Pokémon o cualquier otro widget
                        // Ejemplo de slider básico
                        Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10, // Número de Pokémon en el slider
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  width: 150,
                                  color: Colors.blueAccent,
                                  child: Center(
                                    child: Text(
                                      'Pokémon ${index + 1}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        // Otros elementos o contenido de la pantalla
                        SizedBox(height: 20),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),

                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        Text('Más contenido aquí'),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} */


/* Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Image.network('https://cdn-icons-png.freepik.com/256/14823/14823174.png?semt=ais_hybrid',
                width: 200, 
                )
              ),  
            ),
            SafeArea(
              child: Container(
                color: Colors.transparent,
                alignment:Alignment.topLeft,
                child: Center(child: Text('Hola'),),
              ),
            )
          ],
        ), */