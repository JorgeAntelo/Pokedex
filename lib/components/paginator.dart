import 'package:flutter/material.dart';
import 'package:pokedex/providers/states.dart';
import 'package:provider/provider.dart';

class Paginator extends StatefulWidget {
  const Paginator({super.key});

  @override
  State<Paginator> createState() => _PaginatorState();
}

class _PaginatorState extends State<Paginator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.read<MetadataStates>().previousPage();
            },
          ),
          Text(
            'Page ${context.watch<MetadataStates>().currentPage} of ${context.watch<MetadataStates>().totalPages}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              context.read<MetadataStates>().nextPage();
            },
          ),
        ],
      ),
    );
  }
}
