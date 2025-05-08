import 'package:flutter/material.dart';
import 'daftar_teman.dart';

class HalamanProfil extends StatefulWidget {
  final String email;

  const HalamanProfil({super.key, required this.email});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final containerColor = isDarkMode ? Colors.grey[800] : Colors.grey[200];
    final profileImage =
        isDarkMode
            ? AssetImage('images/dyah.jpg')
            : AssetImage('images/kucing.jpg');

    final textStyle = TextStyle(
      fontSize: 14,
      color: textColor,
      fontStyle: isDarkMode ? FontStyle.italic : FontStyle.normal,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: TextStyle(color: textColor)),
        backgroundColor: backgroundColor,
        iconTheme: IconThemeData(color: textColor),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
            color: textColor,
            onPressed: toggleTheme,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaftarTeman()),
              );
            },
            icon: Icon(Icons.group, color: textColor),
            label: Text('Daftar Teman', style: TextStyle(color: textColor)),
          ),
        ],
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(radius: 50, backgroundImage: profileImage),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.edit, color: Colors.white, size: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email:',
                      style: textStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(widget.email, style: textStyle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
