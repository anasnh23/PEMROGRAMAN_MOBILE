import 'package:flutter/material.dart';
import 'pages/landing_page.dart'; // Impor Halaman Landing sebagai halaman awal

// Fungsi utama aplikasi Flutter yang akan dieksekusi pertama kali.
void main() {
  runApp(MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root.
}

// Widget utama aplikasi, menggunakan StatelessWidget karena tidak ada state dinamis.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug di pojok kanan atas.
      title: 'Aplikasi Sederhana', // Judul aplikasi yang ditampilkan pada task manager.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna tema utama aplikasi.
      ),
      home: LandingPage(), // Halaman awal yang ditampilkan adalah LandingPage.
    );
  }
}
