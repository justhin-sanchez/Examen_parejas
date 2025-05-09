import 'package:flutter/material.dart';
import 'pagina_uno.dart'; // Asegúrate de que el archivo esté importado

class PaginaInicial extends StatelessWidget {
  final String avatarUrl =
      'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/neon-purple-background-with-hoodie-clad-male-lifestyle-portrait-featuring-contemporary-fashion-and-stylish-trends-free-photo.jpg';
  final List<String> images = [
    'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/bd63403dfb63c5dea2550cb3eb391eff.jpg',
    'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/image_5747dee5-0c4e-468e-93a3-0c32470d59c6.webp',
    'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/Captura.PNG',
    'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/instagram.fymy1-2.fna_.fbcdn_.net-6612940184603867.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Perfil')),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(radius: 50, backgroundImage: NetworkImage(avatarUrl)),
            const SizedBox(height: 10),
            const Text(
              'Alexy Préfontaine',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('@aeforia', style: TextStyle(color: Colors.blue)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Los mejores tacos de la ciudad.',
                textAlign: TextAlign.center,
              ),
            ),
            const Text('aeforia@outlook.com',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Creations',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 30),
                Text('Collections',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            ),
            const Divider(thickness: 1),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PaginaUno(imageUrl: images[index]),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(images[index], fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
