import 'package:flutter/material.dart';
import 'package:poke_api/presentation/screens/main_screen.dart';

Map<String, Widget Function(BuildContext)> get appRouter{
  return{
    'main-screen' : (_) => MainScreen(),
  };
}