import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;

// void main(List<String> arguments) {
//     var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }


void main() {
  // Mendeklarasikan dan menginisialisasi gifts dan nobleGases
  var gifts = <String, String>{};
  var nobleGases = <int, String>{};

  // Menambahkan data ke dalam gifts
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['name'] = 'Anas Nurhidayat';
  gifts['NIM'] = '2241760069';

  // Menambahkan data ke dalam nobleGases
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Anas Nurhidayat'; // Menambahkan nama dengan kunci integer
  nobleGases[30] = '2241760069';      // Menambahkan NIM dengan kunci integer

  // Mendeklarasikan dan menginisialisasi mhs1 dan mhs2
  var mhs1 = <String, String>{};
  var mhs2 = <int, String>{};

  // Menambahkan data ke dalam mhs1
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['name'] = 'Anas Nurhidayat';
  mhs1['NIM'] = '2241760069';

  // Menambahkan data ke dalam mhs2
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[20] = 'Anas Nurhidayat'; // Menambahkan nama dengan kunci integer
  mhs2[30] = '2241760069';      // Menambahkan NIM dengan kunci integer

  // Mencetak hasil
  print('gifts:');
  print(gifts);

  print('nobleGases:');
  print(nobleGases);

  print('mhs1:');
  print(mhs1);

  print('mhs2:');
  print(mhs2);
}





