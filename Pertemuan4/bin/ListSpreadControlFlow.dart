import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;


// void main(List<String> arguments) { 
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list); // Memperbaiki dengan mencetak 'list' bukannya 'list1'
//   print(list2);
//   print(list2.length);
// }  

// void main(List<String> arguments) {
//   var list1 = [1, 2, null];
//   print('list1: $list1');

//   var nimList = ['2241760069'];
  
//   // Spread Operators untuk menggabungkan list
//   var list3 = [0, ...?list1, ...nimList];
//   print('list3: $list3');
//   print('list3.length: ${list3.length}');
// }

//PromoActive True
// void main() {
//   var promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav); // Output: [Home, Furniture, Plants, Outlet]
// }

// //PromoActive False
// void main() {
//   var promoActive = false;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav); // Output: [Home, Furniture, Plants, Outlet]
// }


//case login manager
// void main() {
//   var login = 'Manager'; 
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print(nav2);
// }

//case login Employee
// void main() {
//   var login = 'Manager'; 

//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Employe') 'Inventory'];
//   print(nav2);
// }


void main() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}




