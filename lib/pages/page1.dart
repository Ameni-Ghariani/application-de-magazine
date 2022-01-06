// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

class MaPremierePage extends StatelessWidget {
  const MaPremierePage({Key? key}) : super(key: key);
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
        title: const Text('Magazine Infos'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Identité :',
                  style: TextStyle(
                      color: Colors.blueAccent, fontSize: 20, height: 2.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'La magazine infos est une magazine créée en 2006 par un groupe de personnes passionnées de mode, de culture et de cusine.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50.0),
                _Buttoms(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/deuxieme');
        },
        child: const Text('Click'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class _Buttoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomButtom(
              iconchoisi: Icons.call,
              nom: 'Appel',
            ),
            CustomButtom(
              iconchoisi: Icons.mail,
              nom: 'MAIL',
            ),
            CustomButtom(
              iconchoisi: Icons.share,
              nom: 'Partage',
            ),
          ],
        ),
      );
}

class CustomButtom extends StatelessWidget {
  final IconData iconchoisi;
  final String nom;

  // ignore: use_key_in_widget_constructors
  const CustomButtom({
    required this.iconchoisi,
    required this.nom,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(this.iconchoisi, color: Colors.blue.shade400),
            color: Colors.blue,
            iconSize: 30.0,
          ),
          Text(this.nom,
              style: TextStyle(
                color: Colors.blue.shade400,
              )),
        ],
      );
}
