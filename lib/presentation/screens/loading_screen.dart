import 'package:flutter/material.dart';
import 'package:poke_api/presentation/widgets/screen_gradient.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
     goToMainScreen(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width * 1,
        height: size.height * 1,
        decoration: screenGradient(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.network('https://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/284377/pokeapi_1024.png'),
              )
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ClipRRect(
                    child: Image.network('https://cdn-icons-png.freepik.com/256/16025/16025478.png?semt=ais_hybrid')
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ClipRRect(
                    child: Image.network('https://gcdn.thunderstore.io/live/repository/icons/Chillllll-Pikachu-1.1.0.png.256x256_q95.png')
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 100,
            ),
            CircularProgressIndicator(
              color: Colors.grey.shade200,
              strokeWidth: 6,
            )
          ],
        ),
      ),
    );
  }
}

goToMainScreen(BuildContext context){
  Navigator.of(context).pushNamed('main-screen');
}