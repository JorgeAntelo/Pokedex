import 'package:flutter/material.dart';
import 'package:pokedex/components/constants.dart';
import 'package:pokedex/providers/states.dart';
import 'package:pokedex/screens/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MetadataStates())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: primaryMaterialColor,
        scaffoldBackgroundColor: secondaryMaterialColor,
      ),
      home: const Home(),
    );
  }
}
