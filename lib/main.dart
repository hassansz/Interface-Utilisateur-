import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourisme en Thaïlande',
      theme: ThemeData(
        primarySwatch: Colors.cyan, // Couleur principale de l'application
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan, // Couleur de l'AppBar
        leading: IconButton(
          icon: const Icon(Icons.menu), // Icône du menu
          onPressed: () {
            // Action pour le bouton menu (à implémenter plus tard)
          },
        ),
        title: const Text('Voyage Thaïlande'), // Titre de l'AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border), // Icône de bookmark
            onPressed: () {
              // Action pour le bouton bookmark (à implémenter plus tard)
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageSection(), // Section d'image
            TitleSection(), // Section de titre
            TextSection(), // Section de texte
            IconSection(), // Section d'icônes
            ImageGridSection(), // Section de grille d'images
            MoreButtonSection(), // Bouton "Voir plus de logements"
          ],
        ),
      ),
    );
  }
}

// Section d'image
class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80e', // Remplacez par l'URL de votre image
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}

// Section de titre
class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Réservez votre séjour en Thaïlande',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Découvrez les meilleures offres pour votre voyage',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

// Section de texte
class TextSection extends StatelessWidget {
  const TextSection({super.key});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        "La Thaïlande, en forme longue le Royaume de Thaïlande, est un pays d’Asie du Sud-Est dont le territoire couvre 514 000 km2. Avant 1939, il s’appelait le Royaume de Siam. Il est bordé à l’ouest par la Birmanie, au sud par la Malaisie, à l’est par le Cambodge et au nord-est par le Laos. C’est une monarchie constitutionnelle depuis 1932. Sa capitale est Krung Thep, anciennement appelée Bangkok. La langue officielle est le thaï et la monnaie le baht.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
    );
  }
}

// Section d'icônes
class IconSection extends StatelessWidget {
  const IconSection({super.key});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Icon(Icons.hotel, color: Colors.cyan),
              const SizedBox(height: 5),
              Text(
                'Hôtels'.toUpperCase(),
                style: const TextStyle(color: Colors.cyan),
              ),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.airplanemode_active, color: Colors.cyan),
              const SizedBox(height: 5),
              Text(
                'Vols'.toUpperCase(),
                style: const TextStyle(color: Colors.cyan),
              ),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.drive_eta, color: Colors.cyan),
              const SizedBox(height: 5),
              Text(
                'Voiture'.toUpperCase(),
                style: const TextStyle(color: Colors.cyan),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Section de grille d'images
class ImageGridSection extends StatelessWidget {
  const ImageGridSection({super.key});

  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', // Hôtel en Thaïlande
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', // Plage en Thaïlande
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1528181304800-259b08848526?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', // Temple en Thaïlande
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1529&q=80', // Paysage en Thaïlande
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

// Bouton "Voir plus de logements"
class MoreButtonSection extends StatelessWidget {
  const MoreButtonSection({super.key});

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          textStyle: const TextStyle(fontSize: 20),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogementPage()),
          );
        },
        child: const Text('Voir plus de logements'),
      ),
    );
  }
}

class LogementPage extends StatelessWidget {
  const LogementPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logements en Thaïlande'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Découvrez nos meilleurs logements en Thaïlande',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Profitez de nos offres exclusives pour des hôtels de luxe, des villas privées et des resorts en bord de mer.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
