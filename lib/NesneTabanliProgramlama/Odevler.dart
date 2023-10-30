import 'dart:io';

void main()
{
  // odev 1: Parametre olarak girilen dereceyi fahrenhiet'a donusturdukten sonra geri donduren bir method
  // T(f) = T(c) * 1.8 + 32;
  print("Derece: ");
  double derece = double.parse(stdin.readLineSync()!);
  var result = SicaklikDonusumu(derece);
  print(result);

  // odev 2: Kenarlari parametre olarak girilen ve dikdortgenin cevresini hesaplayan bir metot yaziniz.
  print("Kisa Kenar: ");
  double kisaKenar = double.parse(stdin.readLineSync()!);

  print("Uzun kenar: ");
  double uzunKenar = double.parse(stdin.readLineSync()!);
  result = DikdortgenCevreHesapla(kisaKenar, uzunKenar);
  print(result);

  // odev 3: Parametre olarak girilen sayinin faktoriyel degerini hesaplayip geri donduren method
  print("Faktoriyel degeri hesaplanacak sayiyi giriniz:");
  var sayi = double.parse(stdin.readLineSync()!);
  result = Faktoriyel(sayi);
  print(result);

  // Odev 4: Parametre olarak girilen kelimde ve harf icin harfin kelime icinde kac adet oldugunu gosteren bir program yaziniz
  print("Kelimeyi giriniz: ");
  String kelime = stdin.readLineSync()!;
  
  print("Harfi giriniz: ");
  String harf = stdin.readLineSync()!;

  result = HarfSayici(kelime, harf);
  print("Adet: $result");

  // Odev 5: Parametre olarak girilen kenar sayisina gore ic acilar toplamini hesaplayip sonucu geri donduren method
  // n: kenar sayisi   (n-2) * 180
  print("Kenar sayisini giriniz: ");
  int kenarSayisi = int.parse(stdin.readLineSync()!);
  result = IcAcilarToplami(kenarSayisi);
  print("Ic Acilar Toplami: $result");

  // Odev 6: Parametre olarak girilen gun sayisina gore maas hesabi yapan ve elde edilen degeri geri donduren method
  print("Gun sayisini giriniz: ");
  int gunSayisi = int.parse(stdin.readLineSync()!);
  result = MaasHesapla(gunSayisi);
  print(result);

  // Odev 7: Parametre olarak girilen kota miktarina gore ucreti hesaplayarak geri donduren method
  print("Kota miktari: ");
  double kota = double.parse(stdin.readLineSync()!);
  result = kotaHesapla(kota);
  print(result);
}

// Odev 1 method
double SicaklikDonusumu(double dereceC)
{
  double dereceF;
  dereceF = dereceC * 1.8 + 32;
  return dereceF;
}

// odev 2 method
double DikdortgenCevreHesapla(double kisaKenar, double uzunKenar)
{
  double result = kisaKenar * 2 + 2 * uzunKenar;
  return result;
}

// odev 3 method
double Faktoriyel(double sayi)
{
  double result = 1;

  while(sayi > 0)
  {
    result *= sayi;
    sayi--;
  }
  return result;
}

// odev 4 method
double HarfSayici(String kelime, String harf)
{
  double sayac = 0;

  for(var i=0; i<kelime.length; i++)
    if(kelime[i] == harf)
      sayac++;

  return sayac;
}

// odev 5 method
double IcAcilarToplami(int kenarSayisi)
{
  double result;
  result = (kenarSayisi - 2) * 180;
  return result;
}

// odev 6 method
double MaasHesapla(int gunSayisi)
{
  int calismaSaati = 1;
  for(var i=0; i<gunSayisi; i++)
    calismaSaati = gunSayisi * 8;

  double ucret = 0;
  if(calismaSaati < 160)
    ucret = calismaSaati * 10;

  if(calismaSaati > 160)
    ucret = (160 * 10) + (calismaSaati - 160) * 20;

  return ucret;
}

// odev 7 method
double kotaHesapla(double kota)
{
  double ucret = 0;

  if(kota <= 50)
    ucret = 100;

  if(kota > 50)
    ucret = 100 + (kota - 50) * 4;

  return ucret;
}