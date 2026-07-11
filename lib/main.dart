import 'package:flutter/material.dart';

//await tester.pumpWidget(const MyApp());

void main() {
  runApp(const MonAppli());
} 


class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magazine",
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.pinkAccent,
  title: const Text(
    "Magazine Infos",
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,

  leading: IconButton(
    icon: const Icon(Icons.menu),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Votre menu"),
        ),
      );
    },
  ),

  actions: [
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Voulez-vous effectuer une recherche ?"),
          ),
        );
      },
    ),
  ],
),

      body: Center(
        child: Image.asset(
          "assets/images/magazine.png",
          width: 250,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Vous avez cliqué sur le bouton "),
            ),
          );
        },
        child: const Text("Click"),
      ),
    );
  }
}