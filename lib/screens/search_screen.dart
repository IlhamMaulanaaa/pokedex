// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
// import 'package:pokedex/models/pokemon.dart';
// import 'package:pokedex/screens/listpokemon_screen.dart';
// import 'package:pokedex/utilities/constants.dart';
//
// import '../data/pokemons.dart';
// import 'detail_screen.dart';
//
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
// class _SearchScreenState extends State<SearchScreen> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//       title: Text("pokemon search"),
//       centerTitle: true,
//     ),
//     body: Column(
//       children: [
//         buildSearch(),
//         Expanded(child: ListView.separated(
//           separatorBuilder: (context, index) => const Divider(
//             thickness: 0.3,
//             height: 0.3,
//           ),
//           itemCount: pokemons.length,
//           itemBuilder: (context, index) {
//             final pokemon = pokemons[index];
//             return  ListTile(
//               contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(pokemon: pokemon),),);
//               },
//               title: Text(pokemon.name),
//               leading: Image.asset("assets/images/small/${pokemon.id}.png"),
//               subtitle: Wrap(
//                 spacing: 4.0,
//                 runSpacing: 4.0,
//                 children: pokemon.types
//                     .map(
//                       (type) => Chip(
//                     label: Text(type),
//                     backgroundColor: const Color(0xFFdfe6e9),
//                   ),
//                 )
//                     .toList(),
//               ),
//               trailing: Column(children: [
//                 const Text('HP',
//                   style: TextStyle(
//                       fontFamily: 'pokemon',
//                       fontWeight: FontWeight.bold,
//                       color: kLightGrey),
//                 ),
//                 const SizedBox(height: 4.0,),
//                 Text(pokemon.hitPoints.toString(),style: const TextStyle(fontFamily: 'pokemon', fontSize: 18, fontWeight: FontWeight.w400,color: kDarkGrey),)
//               ],
//               ),
//             );
//           },
//         ),
//         )
//       ],
//     ),
//   );
//
//   buildSearch() {
//
//   }
//   }