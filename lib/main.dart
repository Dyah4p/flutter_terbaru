import 'package:flutter/material.dart';
import 'daftar_teman.dart';
import 'halaman_login.dart';
import 'halaman_profil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
     routes: {
      '/': (context) => HalamanLogin(),
      '/profil': (context) => HalamanProfil(),
      '/teman':(context) => DaftarTeman(),
     },
    );
  }
}

