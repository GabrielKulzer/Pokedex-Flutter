import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/widgets/description.dart';
import 'package:pokedex/screens/home/widgets/stats.dart';
import 'package:pokedex/screens/home/widgets/weaknesses.dart';
import 'package:pokedex/screens/models/pokemon.dart';
import 'package:pokedex/style.dart';

class HomePage extends StatelessWidget {
  final pokemon = Pokemon(
      picture: "assets/images/charmander.png",
      description:
          "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
      height: 0.6,
      weight: 8.5,
      type: ["Fogo"],
      skill: "Chama",
      weakness: ["Água", "Terra", "Rocha"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(
          "Charmander #004",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Image.asset("assets/images/logo.png"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Image.asset(pokemon.picture),
            Description(pokemon.description),
            Stats(pokemon),
            Weaknesses(pokemon.weakness)
          ]),
        ),
      ),
    );
  }
}
