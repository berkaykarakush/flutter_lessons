import 'dart:io';

void main()
{
  String str = "Merhaba";
  print(str);

  String str2 = """
  Nasilsin 
  merhaba
  """;
  print(str2);

  int a = 10;
  int b = 20;
  String str3 = "$a + $b = ${a+b}";
  print(str3);

  String str4 = "Merhaba";
  String str5 = "Merhaba";
  if(str4 == str5)
    print("$str4 ve $str4 = esittir");
  else
    print("$str4 ve $str5 esit degildir");

  String text = "Merhaba dunya";
  print(text.substring(0, 3));
  print(text.length);
  print(text.toUpperCase());
  print(text.toLowerCase());
  print(text.contains("x"));
  print(text.split(" "));
  print(text.trim());
  print(text.isEmpty);

  // ornek : Tersten yazdirma
  print("Kelime giriniz: ");
  var kelime = stdin.readLineSync()!;

  String tersKelime = "";
  for(var i=kelime.length - 1; i > -1; i--)
    tersKelime += kelime[i];

  print(tersKelime);
}