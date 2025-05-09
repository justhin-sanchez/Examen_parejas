import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  final String imageUrl;
  const PaginaUno({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EDF6),
      appBar: AppBar(title: const Text('Detalle de la Obra')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(imageUrl),
            ),
            const SizedBox(height: 20),
            const Text('Consume',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/neon-purple-background-with-hoodie-clad-male-lifestyle-portrait-featuring-contemporary-fashion-and-stylish-trends-free-photo.jpg'),
                ),
                SizedBox(width: 10),
                Text('Creator\n@aeforia', style: TextStyle(fontSize: 14)),
                Spacer(),
                Text('Current bid\n1.53 ETH',
                    textAlign: TextAlign.right, style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'So happy to share my second collab with my dear father @fvckrender. I\'m so proud of his work and accomplishments.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text('Info', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text('Birds',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                SizedBox(width: 20),
                Text('History'),
              ],
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Bid placed by Jenny'),
              trailing: Text('1.53 ETH'),
              subtitle: Text('May 4, 2021 at 14:22'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text('Buy it now',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
