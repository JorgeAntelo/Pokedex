import 'package:flutter/material.dart';
import 'package:pokedex/providers/states.dart';
import 'package:pokedex/screens/home/body.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../components/constants.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Pokedex, ${context.watch<MetadataStates>().totalItems} pokemons found'),
        actions: const <Widget>[],
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperTwo(flip: false, reverse: false),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              color: black,
            ),
          ),
          ClipPath(
            clipper: WaveClipperTwo(flip: false, reverse: false),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              color: primary,
            ),
          ),
          const Body(),
        ],
      ),
      //floating next and previous buttons on a bottombar
    );
  }
}
