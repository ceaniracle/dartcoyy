import 'dart:io';

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Pembagian dengan nol tidak diperbolehkan.");
    return double.nan;
  }
  return a / b;
}

void main() {
  while (true) {
    print("\n=== KALKULATOR WOIPP ===");
    stdout.write("Masukkkan angka pertama: ");
    double? angka1 = double.tryParse(stdin.readLineSync()!);

    stdout.write("Masukkkan angka kedua: ");
    double? angka2 = double.tryParse(stdin.readLineSync()!);

    if (angka1 == null || angka2 == null) {
      print("Input tidak valid. Mohon masukkan angka yang benar.");
      continue;
    }

    print("\nPilih operasi (+, -, *, /)");
    String operasi = stdin.readLineSync()!;

    double hasil;

    switch (operasi) {
      case '+':
        hasil = tambah(angka1, angka2);
        break;
      case '-':
        hasil = kurang(angka1, angka2);
        break;
      case '*':
        hasil = kali(angka1, angka2);
        break;
      case '/':
        hasil = bagi(angka1, angka2);
        break;
      default:
        print("Operasi tidak valid.");
        continue;
    }

    print("\nHasil: $angka1 $operasi $angka2 = $hasil");
  

  stdout.write("Apakah Anda ingin menghitung lagi? (y/n): ");
  String? lanjut = stdin.readLineSync();
  if (lanjut == null || lanjut.toLowerCase() != 'y') {
    print("Terima kasih telah menggunakan kalkulator!");
    break;
  }
  }
}