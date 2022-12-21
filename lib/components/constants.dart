import 'package:flutter/material.dart';

const primary = Color.fromRGBO(228, 66, 52, 1);
const primaryMaterialColor = MaterialColor(0xFFE44234, <int, Color>{
  50: Color.fromRGBO(228, 66, 52, .1),
  100: Color.fromRGBO(228, 66, 52, .2),
  200: Color.fromRGBO(228, 66, 52, .3),
  300: Color.fromRGBO(228, 66, 52, .4),
  400: Color.fromRGBO(228, 66, 52, .5),
  500: Color.fromRGBO(228, 66, 52, .6),
  600: Color.fromRGBO(228, 66, 52, .7),
  700: Color.fromRGBO(228, 66, 52, .8),
  800: Color.fromRGBO(228, 66, 52, .9),
  900: Color.fromRGBO(228, 66, 52, 1),
});

const secondary = Color.fromARGB(255, 235, 235, 235);
const secondaryMaterialColor = MaterialColor(0xFFEBEBEB, <int, Color>{
  50: Color.fromRGBO(235, 235, 235, .1),
  100: Color.fromRGBO(235, 235, 235, .2),
  200: Color.fromRGBO(235, 235, 235, .3),
  300: Color.fromRGBO(235, 235, 235, .4),
  400: Color.fromRGBO(235, 235, 235, .5),
  500: Color.fromRGBO(235, 235, 235, .6),
  600: Color.fromRGBO(235, 235, 235, .7),
  700: Color.fromRGBO(235, 235, 235, .8),
  800: Color.fromRGBO(235, 235, 235, .9),
  900: Color.fromRGBO(235, 235, 235, 1),
});
const black = Color.fromARGB(255, 36, 36, 36);

Widget redCircularProgressIndicator() {
  return const Center(
      child: SizedBox(
    height: 50,
    width: 50,
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(primary),
    ),
  ));
}

Function(String) sortColorBasedOnType = (String value) {
  switch (value) {
    case 'normal':
      return Colors.grey[400];
    case 'fire':
      return Colors.red[400];
    case 'water':
      return Colors.blue[400];
    case 'electric':
      return Colors.yellow[400];
    case 'grass':
      return Colors.green[400];
    case 'ice':
      return Colors.lightBlue[400];
    case 'fighting':
      return Colors.brown[400];
    case 'poison':
      return Colors.purple[400];
    case 'ground':
      return Colors.brown[400];
    case 'flying':
      return Colors.blue[400];
    case 'psychic':
      return Colors.pink[400];
    case 'bug':
      return Colors.green[400];
    case 'rock':
      return Colors.brown[400];
    case 'ghost':
      return Colors.purple[400];
    case 'dragon':
      return Colors.red[400];
    case 'dark':
      return Colors.grey[400];
    case 'steel':
      return Colors.grey[400];
    case 'fairy':
      return Colors.pink[400];
    default:
      return Colors.grey[400];
  }
};
