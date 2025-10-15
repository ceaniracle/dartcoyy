import 'dart:io';

// ==== Bagian Function ====
double celciusToFahrenheit(double celcius) {
  return (celcius * 9 / 5) + 32;
}

double celciusToKelvin(double celcius) {
  return celcius + 273.15;
}

double fahrenheitToCelcius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

double fahrenheitToKelvin(double fahrenheit) {
  return fahrenheitToCelcius(fahrenheit) + 273.15;
}

double kelvinToCelcius(double kelvin) {
  return kelvin - 273.15;
}

double kelvinToFahrenheit(double kelvin) {
  return celciusToFahrenheit(kelvinToCelcius(kelvin));
}

void tampilkanHasil(String jenisKonversi, double nilaiAwal, double nilaiAkhir) {
  print("$jenisKonversi: $nilaiAwal -> $nilaiAkhir");
}

// ==== Program Utama ====

void main() {
  print("=== Program Konversi Suhu Otomatis ===");
  print("Pilih skala suhu awal:");
  print("1. Celcius");
  print("2. Fahrenheit");
  print("3. Kelvin");
  stdout.write("Masukkan pilihan (1/2/3): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan nilai suhu: ");
  double nilai = double.parse(stdin.readLineSync()!);

  print("\n=== Hasil Konversi ===");
  if (pilihan == 1) {
    tampilkanHasil("Celcius ke Fahrenheit", nilai, celciusToFahrenheit(nilai));
    tampilkanHasil("Celcius ke Kelvin", nilai, celciusToKelvin(nilai));
  } else if (pilihan == 2) {
    tampilkanHasil("Fahrenheit ke Celcius", nilai, fahrenheitToCelcius(nilai));
    tampilkanHasil("Fahrenheit ke Kelvin", nilai, fahrenheitToKelvin(nilai));
  } else if (pilihan == 3) {
    tampilkanHasil("Kelvin ke Celcius", nilai, kelvinToCelcius(nilai));
    tampilkanHasil("Kelvin ke Fahrenheit", nilai, kelvinToFahrenheit(nilai));
  } else {
    print("Pilihan tidak valid.");
  }
}