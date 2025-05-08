import 'package:flutter/material.dart';

class Teman {
  final String nama;
  const Teman({required this.nama});
}

class DaftarTeman extends StatefulWidget {
  const DaftarTeman({super.key});

  @override
  State<DaftarTeman> createState() => _DaftarTemanState();
}

class _DaftarTemanState extends State<DaftarTeman> {
  final List<Teman> friends = const [
    Teman(nama: 'Waras Tri Wijaya'),
    Teman(nama: 'Abdul Fuad Nurdiansah'),
    Teman(nama: 'Adi Tegar Setiawan'),
    Teman(nama: 'Afiq Muhammad'),
    Teman(nama: 'Aji Kia Ramadani'),
    Teman(nama: 'Alfi Fadli'),
    Teman(nama: 'Alif Akbar'),
    Teman(nama: 'Amanda Aditama'),
    Teman(nama: 'Andri Khoirul'),
    Teman(nama: 'Atik Setya'),
    Teman(nama: 'Bayu Susilo'),
    Teman(nama: 'Claudea Cahaya'),
    Teman(nama: 'Devan V'),
    Teman(nama: 'Dina Asritama Wulandari'),
    Teman(nama: 'Elsa O'),
    Teman(nama: 'Fizal W'),
    Teman(nama: 'Febrian'),
    Teman(nama: 'Garin Dani'),
    Teman(nama: 'Haffiant'),
    Teman(nama: 'Ilham Khoiri'),
    Teman(nama: 'Jenniva Retno Nuryuansyah'),
    Teman(nama: 'Mahes'),
    Teman(nama: 'M Syarif'),
    Teman(nama: 'M Amir'),
    Teman(nama: 'M Noviyanto'),
    Teman(nama: 'M Zulfa'),
    Teman(nama: 'Nabilah'),
    Teman(nama: 'Nur Rahman Saleh'),
    Teman(nama: 'Rafael Theo Santoso'),
    Teman(nama: 'Raply F'),
    Teman(nama: 'Rizal Diaz'),
    Teman(nama: 'Satria A'),
    Teman(nama: 'Sulton'),
    Teman(nama: 'Valen P'),
    Teman(nama: 'Vhereyga Putra P'),
    Teman(nama: 'Yola A W'),
    Teman(nama: 'Dyah Purwaningsih'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Teman'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.separated(
        itemCount: friends.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder:
            (context, index) => ListTile(
              leading: const Icon(Icons.account_circle, size: 32),
              title: Text(friends[index].nama),
              trailing: const Icon(Icons.call),
              onTap:
                  () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Menghubungi ${friends[index].nama}'),
                      duration: const Duration(seconds: 1),
                    ),
                  ),
            ),
      ),
    );
  }
}
