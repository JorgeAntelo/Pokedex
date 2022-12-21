import 'package:flutter/material.dart';
import 'package:pokedex/components/customDialog';
import 'package:pokedex/utils/utils.dart';

class Item extends StatelessWidget {
  final String image;
  final String name;
  final types;
  final weight;
  final height;
  const Item(
      {Key? key,
      required this.image,
      required this.name,
      required this.types,
      required this.weight,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          padding: const EdgeInsets.all(5),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              // ignore: prefer_const_constructors
              BoxShadow(
                color: const Color.fromARGB(185, 85, 85, 85),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(-5, 5), // changes position of shadow
              ),
            ],
          ),
          child: InkWell(
            child: Image.network(
              image,
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog(
                        image: image,
                        name: name,
                        types: types,
                        weight: weight,
                        height: height);
                  });
            },
          ),
        ),
        Text(
          name.capitalize(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(-1.0, 1.0),
                blurRadius: 6.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
