// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:pokedex/components/httpservices.dart';
import 'package:pokedex/components/item.dart';
import 'package:pokedex/components/paginator.dart';
import 'package:provider/provider.dart';
import '../../providers/states.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List detailedPokemonList = [];
  List basePokemonList = [];

  @override
  void initState() {
    super.initState();
    GetPokemons.fetchPokemons(1).then((response) {
      basePokemonList = response.results;
      context.read<MetadataStates>().setTotalItems(response.count);
      detailedPokemonList = [];
      for (var i = 0; i < basePokemonList.length; i++) {
        GetPokemons.getPokemonDetails(basePokemonList[i]['url'])
            .then((response) {
          detailedPokemonList.add(response);
          return setState(() {
            detailedPokemonList = detailedPokemonList;
          });
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    GetPokemons.fetchPokemons(context.watch<MetadataStates>().currentPage)
        .then((response) {
      basePokemonList = response.results;
      detailedPokemonList = [];
      for (var i = 0; i < basePokemonList.length; i++) {
        GetPokemons.getPokemonDetails(basePokemonList[i]['url'])
            .then((response) {
          detailedPokemonList.add(response);
          return setState(() {
            detailedPokemonList = detailedPokemonList;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return detailedPokemonList.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: [
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: detailedPokemonList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Item(
                      image:
                          detailedPokemonList[index].sprites['front_default'],
                      name: detailedPokemonList[index].name,
                      types: detailedPokemonList[index].types,
                      weight: detailedPokemonList[index].weight,
                      height: detailedPokemonList[index].height,
                    );
                  },
                ),
              ),
              const Paginator()
            ],
          );
  }
}
