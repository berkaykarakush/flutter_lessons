void main()
{
  String? mesaj = null;

  mesaj = "Merhaba";

  String? isim = null;
  isim = "Ahmet";

  //Yontem 1: ?
  print("Sonuc 1: ${isim?.toUpperCase()}");

  // Yontem 2: !
  print("Sonuc 2: ${isim!.toUpperCase()}");

  // Yontem 3: if kontrol
  if(isim != null)
    print("Sonuc 3: ${isim.toUpperCase()}");
  else
    print("Null deger");
}
