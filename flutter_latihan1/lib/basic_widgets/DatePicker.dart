import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable untuk menyimpan tanggal yang dipilih
  DateTime selectedDate = DateTime.now();

  // Fungsi untuk memilih tanggal
  Future<void> _selectDate(BuildContext context) async {
    // Menampilkan dialog Date Picker
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Tanggal awal yang ditampilkan
      firstDate: DateTime(2015, 8), // Tanggal awal yang dapat dipilih
      lastDate: DateTime(2101), // Tanggal akhir yang dapat dipilih
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked; // Mengupdate tanggal yang dipilih
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Judul AppBar
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ukuran kolom minimal
          children: <Widget>[
            Text(
              "${selectedDate.toLocal()}".split(' ')[0], // Menampilkan tanggal yang dipilih
              style: const TextStyle(fontSize: 24), // Mengatur ukuran font
            ),
            const SizedBox(
              height: 20.0, // Jarak antara text dan button
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context), // Memanggil fungsi _selectDate saat tombol ditekan
                // Mengabaikan print di sini
                print('Selected Date: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}')
              },
              child: const Text('Pilih Tanggal'), // Teks tombol
            ),
          ],
        ),
      ),
    );
  }
}
