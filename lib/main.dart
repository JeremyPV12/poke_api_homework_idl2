import 'package:flutter/material.dart';
import 'package:poke_api/presentation/router/app_router.dart';
import 'package:poke_api/presentation/screens/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
      routes: appRouter,
    );
  }
}