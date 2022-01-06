import 'dart:ui';

import 'package:flutter/material.dart';

class MaquatriemePage extends StatelessWidget {
  const MaquatriemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/LogoFSEG.png'),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('description du magazine infos'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_album),
              title: const Text('Galerie de photos'),
              onTap: () {
                Navigator.pushNamed(context, '/deuxieme');
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('Création Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/troisieme');
              },
            ),
            ListTile(
              leading: const Icon(Icons.design_services),
              title: const Text('Nos services'),
              onTap: () {
                Navigator.pushNamed(context, '/quatrieme');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Magazine Infos'),
      ),
      body: Table(
        children: <TableRow>[
          const TableRow(
            children: <Widget>[
              carte(
                couleur: Colors.blue,
                icon: Icons.border_all,
                texte: 'Lieux',
              ),
              carte(
                  couleur: Colors.purple,
                  icon: Icons.car_rental,
                  texte: 'Transport'),
            ],
          ),
          const TableRow(
            children: [
              carte(
                couleur: Colors.pinkAccent,
                icon: Icons.shopping_bag,
                texte: 'Shopping',
              ),
              carte(
                  couleur: Colors.redAccent, icon: Icons.coffee, texte: 'Café'),
            ],
          ),
          TableRow(
            children: [
              carte(
                couleur: Colors.brown.shade400,
                icon: Icons.map,
                texte: 'Map',
              ),
              carte(
                couleur: Colors.orange.shade400,
                icon: Icons.restaurant_rounded,
                texte: 'Restaurants',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class carte extends StatelessWidget {
  final IconData icon;
  final Color couleur;
  final String texte;

  const carte({
    required this.icon,
    required this.couleur,
    required this.texte,
  });

  @override
  Widget build(BuildContext context) => _Cartearriere(
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(128, 222, 234, 0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: this.couleur,
                child: Icon(this.icon, size: 35, color: Colors.white),
                radius: 30,
              ),
              const SizedBox(height: 30),
              Text(
                this.texte,
                style: TextStyle(color: this.couleur, fontSize: 18),
              ),
            ],
          ),
        ),
      );
}

class _Cartearriere extends StatelessWidget {
  final Widget child;
  const _Cartearriere(
      {required this.child}); // elle s'applique sur le child courant

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(15),
        child: ClipRRect(
          // pour arrondir l'arrière plan du conteneur
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            // pour appliquer un filtre
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: this.child, //le filtre est appliqué sur le child en question
          ),
        ),
      );
}
