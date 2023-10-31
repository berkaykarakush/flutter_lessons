void main()
{
  var adres = Adres("Bursa", "Yildirim");
  var musteri = Musteriler("Ahmet", 34, adres);

  print("Musteri ado: ${musteri.ad} \nMusteri yas: ${musteri.yas} \nMusteri Adres: ${musteri.adres.il}/${musteri.adres.ilce}");
}

class Adres
{
  String il;
  String ilce;
  Adres(this.il, this.ilce);
}

class Musteriler
{
  String ad;
  int yas;
  Adres adres;
  Musteriler(this.ad, this.yas, this.adres);
}

