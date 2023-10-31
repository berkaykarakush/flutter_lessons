import 'dart:io';

void main()
{
  print("Adinizi giriniz: ");
  String isim = stdin.readLineSync()!;
  print("Adiniz: $isim");

  print("Soyadinizi giriniz");
  String soyisim = stdin.readLineSync()!;
  print("Soyisminiz: $soyisim");

  print("Birinci sayiyi giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);
  print(sayi1);

}