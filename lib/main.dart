import 'package:flutter/material.dart';

/// Point d'entrée de l'application
void main() {
  runApp(const MonAppli());
}

/// Widget principal de l'application
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

/// Page principale de l'application
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre supérieure
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text(
          "Magazine Infos",
          style: TextStyle(color: Colors.white),
        ),

        // Icône menu
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu"),
              ),
            );
          },
        ),

        // Icône recherche
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Recherche"),
                ),
              );
            },
          ),
        ],
      ),

      // Corps principal
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Image principale
            Image.asset(
              "assets/images/magazine.png",
            ),

            // Widgets personnalisés
            const PartieTitre(),
            const PartieTexte(),
            const PartieIcone(),
            const PartieRubrique(),
          ],
        ),
      ),

      // Bouton flottant
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: const Text("Click"),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Tu as cliqué dessus"),
            ),
          );
        },
      ),
    );
  }
}

///==============================================================
/// Widget affichant le titre principal et le sous-titre
///==============================================================
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Magazine Infos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 5),

          Text(
            "Toute l'actualité numérique",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

///==============================================================
/// Widget contenant le texte descriptif
///==============================================================
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: const Text(
        "Magazine Infos est un magazine numérique qui présente "
        "les dernières actualités, les nouveautés technologiques, "
        "la mode, la culture et les événements importants afin "
        "d'informer ses lecteurs chaque jour.",

        textAlign: TextAlign.justify,

        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

///==============================================================
/// Widget affichant les icônes
///==============================================================
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  Widget construireIcone(IconData icone, String texte) {
    return Column(
      children: [

        Icon(
          icone,
          color: Colors.pink,
          size: 35,
        ),

        SizedBox(height: 5),

        Text(
          texte,
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          construireIcone(Icons.phone, "TEL"),

          construireIcone(Icons.email, "MAIL"),

          construireIcone(Icons.share, "PARTAGE"),
        ],
      ),
    );
  }
}

///==============================================================
/// Widget affichant les rubriques
///==============================================================
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/images/presse.jpg",
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/images/modes.jpg",
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}