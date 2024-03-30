import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // Menggunakan SafeArea untuk menghindari overlap dengan status bar
        child: Column(
          children: [
            Container(
              color: Colors.yellow, // Warna latar belakang yang sama dengan yang sebelumnya
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Budi Martami',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.motorsport.com%2Fdriver%2Fmax-verstappen%2F426268%2F&psig=AOvVaw1CSvqzUkkR1vGUDVhtJcdi&ust=1711843489466000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiK9YrYmoUDFQAAAAAdAAAAABAE'), // Ganti dengan URL gambar profil Anda
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ubah Profile',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama Depan',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama Belakang',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Gender',
                                border: OutlineInputBorder(),
                              ),
                              items: <String>['Pria', 'Perempuan', 'Lainnya'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Tanggal Lahir',
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.calendar_today),
                              ),
                              onTap: () {
                                // Kode untuk menampilkan date picker dan menangani input pengguna
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Alamat',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 24.0),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Kode untuk menyimpan informasi profil
                          },
                          child: Text('Simpan'),
                          style: ElevatedButton.styleFrom(
                           backgroundColor: const Color.fromARGB(255, 255, 238, 0), // Warna tombol
                            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}