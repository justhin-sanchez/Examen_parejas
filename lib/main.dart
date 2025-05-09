import 'package:flutter/material.dart';
import 'pagina_inicial.dart'; // Asegúrate de que está importado correctamente

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galería de Arte',
      home: PaginaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
