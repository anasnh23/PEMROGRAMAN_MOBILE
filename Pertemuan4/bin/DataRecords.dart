import 'package:dart_application_2/dart_application_2.dart' as dart_application_2; 

//Langkah1 dan 2
// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }


//Langkah 3
// List<int> tukar(List<int> record) {
//   var a = record[0];
//   var b = record[1];
//   return [b, a];
// }

// void main() {
//   var record = [1, 2]; // List that will be swapped
//   print('Record sebelum ditukar: $record');

//   var result = tukar(record); // Call the tukar function
//   print('Record setelah ditukar: $result');
// }

//langkah 4
// void main() {
//   // Menggunakan List<int> untuk menggantikan tipe record
//   List<dynamic> mahasiswa = ['Anas Nurhidayat', 2241760069];
//   print(mahasiswa);
  
//   // Akses elemen dalam list
//   print('Nama: ${mahasiswa[0]}');
//   print('NIM: ${mahasiswa[1]}');
// }

//Langkah5
void main() {
  var mahasiswa2 = ('Anas Nurhidayat', a: 2241760069, b: true, 'last');
  print(mahasiswa2.$1); // Mencetak 'Anas Nurhidayat'
  print(mahasiswa2.a); // Mencetak 2241760069
  print(mahasiswa2.b); 
  print(mahasiswa2.$2); 
}


