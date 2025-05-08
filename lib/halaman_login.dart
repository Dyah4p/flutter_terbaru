import 'package:flutter/material.dart';
import 'daftar_teman.dart';
import 'halaman_profil.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    String email = emailController.text.trim();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HalamanProfil(email: email)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/login.jpg'),
              onBackgroundImageError: (_, __) {
                debugPrint("images/login.jpg");
              },
            ),

            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            SizedBox(height: 20),

            // Tombol Login 1
            ElevatedButton(onPressed: handleLogin, child: Text('Login')),

            // Tombol Login 2 ke daftar teman
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DaftarTeman()),
                );
              },
              child: Text('Daftar Teman'),
            ),

            SizedBox(height: 10),
            TextButton(onPressed: () {}, child: Text('Lupa Password?')),
          ],
        ),
      ),
    );
  }
}
