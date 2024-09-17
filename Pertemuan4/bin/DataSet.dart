import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;

// void main(List<String> arguments) {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }


void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  // Menambahkan elemen menggunakan .add()
  names1.add("Anas Nurhidayat");
  names1.add("2241760069");

  // Menambahkan elemen menggunakan .addAll()
  names2.addAll(["Anas Nurhidayat", "2241760069"]);

  print("names1:");
  print(names1); 

  print("names2:");
  print(names2); 
}


