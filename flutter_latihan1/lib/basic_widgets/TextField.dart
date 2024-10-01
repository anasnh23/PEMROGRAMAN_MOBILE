import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TextField Example',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur tema warna aplikasi
      ),
      home: const TextFieldExample(), // Memanggil TextFieldExample sebagai home
    );
  }
}

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh TextField"), // Judul AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding untuk body
        child: const TextField(
          obscureText: false, // Tidak menyembunyikan teks
          decoration: InputDecoration(
            border: OutlineInputBorder(), // Garis tepi pada TextField
            labelText: 'Nama', // Label untuk TextField
          ),
        ),
      ),
    );
  }
}
