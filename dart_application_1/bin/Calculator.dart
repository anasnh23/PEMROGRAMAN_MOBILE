import 'dart:io';

void main() {
  int jumlahSemester, jumlahMK;
  int jumlahNilai, jumlahSKS;
  List<List<int>> sks = List.generate(14, (_) => List.filled(30, 0));
  List<int> sksSemester = List.filled(14, 0);
  List<double> nr = List.filled(14, 0.0);
  double totalNR = 0;
  double ipk;

  print('==============================================');
  print('\tProgram Menghitung IPK Mahasiswa');
  print('==============================================');

  stdout.write('Masukkan jumlah semester: ');
  jumlahSemester = int.parse(stdin.readLineSync()!);

  if (jumlahSemester < 2 || jumlahSemester > 14) {
    print('Jumlah semester salah!');
    return;
  }

  List<List<String>> matkul = List.generate(14, (_) => List.filled(30, ''));
  List<List<String>> nilaiHuruf = List.generate(14, (_) => List.filled(30, ''));

  for (int i = 0; i < jumlahSemester; i++) {
    jumlahNilai = 0;
    jumlahSKS = 0;
    stdout.write('Masukkan jumlah mata kuliah semester ${i + 1}: ');
    jumlahMK = int.parse(stdin.readLineSync()!);

    if (jumlahMK < 2) {
      print('Jumlah matakuliah kurang dari 2 setiap semester');
      return;
    } else if (jumlahMK > 30) {
      print('Jumlah mata kuliah tidak boleh lebih dari 30');
      return;
    }

    for (int j = 0; j < jumlahMK; j++) {
      stdout.write('Masukkan mata kuliah ke ${j + 1}\n');
      stdout.write('Masukkan nama matkul: ');
      matkul[i][j] = stdin.readLineSync()!;
      stdout.write('Masukkan jumlah sks matkul: ');
      sks[i][j] = int.parse(stdin.readLineSync()!);
      stdout.write('Masukkan nilai matkul (A/B/C/D/E): ');
      nilaiHuruf[i][j] = stdin.readLineSync()!;
      print('--------------------------------------------');

      int nilaiMatkul;
      switch (nilaiHuruf[i][j]) {
        case 'A':
          nilaiMatkul = 4 * sks[i][j];
          break;
        case 'B':
          nilaiMatkul = 3 * sks[i][j];
          break;
        case 'C':
          nilaiMatkul = 2 * sks[i][j];
          break;
        case 'D':
          nilaiMatkul = 1 * sks[i][j];
          break;
        case 'E':
          nilaiMatkul = 0 * sks[i][j];
          break;
        default:
          print('Input salah!');
          return;
      }
      jumlahNilai += nilaiMatkul;
      jumlahSKS += sks[i][j];
    }

    if (jumlahSKS > 24) {
      print('Jumlah SKS semester lebih dari 24');
      return;
    } else {
      sksSemester[i] = jumlahSKS;
      nr[i] = jumlahNilai / jumlahSKS;
    }
  }

  print('==============================================');
  print('\t\tTranskrip Nilai');
  print('==============================================');

  for (int i = 0; i < jumlahSemester; i++) {
    print('\nHasil Semester ${i + 1} :');
    print('${'Mata Kuliah'.padRight(30)}${'SKS'.padRight(10)}${'Nilai'.padRight(10)}');
    for (int j = 0; j < sks[i].length; j++) {
      if (matkul[i][j].isEmpty) break;
      print('${matkul[i][j].padRight(30)}${sks[i][j].toString().padRight(10)}${nilaiHuruf[i][j].padRight(10)}');
    }
    print('\nSKS\t: ${sksSemester[i]}');
    print('NR\t: ${nr[i].toStringAsFixed(2)}');
    totalNR += nr[i];
    print('--------------------------------------------');
  }

  ipk = totalNR / jumlahSemester;
  print('\nTotal SKS\t: ${sksSemester.reduce((a, b) => a + b)}');
  print('IPK\t\t: ${ipk.toStringAsFixed(2)}');
  print('==============================================');
}
