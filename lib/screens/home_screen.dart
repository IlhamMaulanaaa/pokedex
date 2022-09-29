import 'package:flutter/material.dart';
import 'package:pokedex/screens/listpokemon_screen.dart';
import 'package:pokedex/screens/search_screen.dart';

import '../utilities/constants.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin{

  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.catching_pokemon)),
    Tab(icon: Icon(Icons.search_outlined)),
    Tab(icon: Icon(Icons.arrow_right_alt_outlined)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: _controller,
            tabs: list,
          ),
          title: Center(child: const Text('pokemon', style: TextStyle(fontFamily: 'pokemon', color: Colors.white),)),
          centerTitle: false,
          backgroundColor: kRedColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            ListPokemonScreen(),
            ListPokemonScreen(),
            ListPokemonScreen(),
          ],
        ),
      ),
    );
  }
}