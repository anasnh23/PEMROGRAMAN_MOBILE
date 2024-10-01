import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),  // Memanggil widget MyLayout sebagai body utama
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),  // Menambahkan padding di seluruh sisi
      child: ElevatedButton(
        child: const Text('Show alert'),  // Teks pada tombol
        onPressed: () {
          showAlertDialog(context);  // Memanggil fungsi showAlertDialog saat tombol ditekan
        },
      ),
    );
  }
}

// Fungsi untuk menampilkan AlertDialog
showAlertDialog(BuildContext context) {
  // Membuat tombol OK yang akan digunakan pada dialog
  Widget okButton = TextButton(
    child: const Text("OK"),  // Teks pada tombol
    onPressed: () {
      Navigator.pop(context);  // Menutup dialog saat tombol OK ditekan
    },
  );

  // Membuat objek AlertDialog dengan judul, konten, dan aksi (tombol)
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),  // Judul dialog
    content: const Text("This is my message."),  // Pesan di dalam dialog
    actions: [
      okButton,  // Tombol OK dimasukkan ke dalam actions
    ],
  );

  // Menampilkan dialog di layar menggunakan showDialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;  // Mengembalikan widget AlertDialog
    },
  );
}
