import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';

class MaDeuxiemePage extends StatelessWidget {
  const MaDeuxiemePage({Key? key}) : super(key: key);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Tapez pour voir l'image"),
            GalleryImage(
              imageUrls: [
                "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                "https://isha.sadhguru.org/blog/wp-content/uploads/2016/05/natures-temples.jpg",
                "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                "https://s23574.pcdn.co/wp-content/uploads/Singular-1140x703.jpg",
                "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg"
              ],
            ),
          ],
        ),
      ),
    );
  }
}
