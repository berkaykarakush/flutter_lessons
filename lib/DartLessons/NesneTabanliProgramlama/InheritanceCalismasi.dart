class Arac
{
  String renk;
  String vites;
  Arac(this.renk, this.vites);
}
class Araba extends Arac
{
  String kasaTipi;
  Araba(this.kasaTipi,String renk, String vites) : super(renk,vites);
}
class Nissan extends Araba
{
  String Model;
  Nissan(this.Model, String kasaTipi, String renk, String vites) : super(kasaTipi, renk,vites);
}

// void main()
// {
//   var araba = Araba("Sedan","Kirmizi","Otomatik");
//   print("${araba.kasaTipi} \t ${araba.renk} \t ${araba.vites} ");
//
//   var nissan = Nissan("Micra", "Sedan", "Beyaz", "Manuel");
//   print("${nissan.Model} \t ${nissan.kasaTipi} \t ${nissan.renk} \t ${nissan.vites}");
//
//   var arac = Arac("Mavi", "Otomatik");
//   print("${arac.vites} \t ${arac.renk}");
// }

class Ev
{
  int pencereSayisi;
  Ev(this.pencereSayisi);
}
class Villa extends Ev
{
  bool garajVarmi;
  Villa(this.garajVarmi, int pencereSayisi) : super(pencereSayisi);
}
class Saray extends Ev
{
  int kuleSayisi;
  Saray(this.kuleSayisi, int pencereSayisi) : super(pencereSayisi);
}

// void main()
// {
//   var topkapiSarayi = Saray(10, 100);
//   print("${topkapiSarayi.kuleSayisi} \t ${topkapiSarayi.pencereSayisi}");
//
//   var bogazVilla = Villa(true, 10);
//   print("${bogazVilla.garajVarmi} \t ${bogazVilla.pencereSayisi}");
// }

class Hayvan
{
  void SesCikar()
  {
    print("Ses yok");
  }
}
class Memeli extends Hayvan
{
  @override
  void SesCikar() {
    print("Memeli");
  }
}
class Kedi extends Memeli
{
  @override
  void SesCikar() {
    print("Miyav");
  }
}
class Kopek extends Memeli
{
@override
  void SesCikar() {
    print("Hav hav");
  }
}

void main()
{
  var hayvan = Hayvan();
  hayvan.SesCikar();

  var memeli = Memeli();
  memeli.SesCikar();

  var kedi = Kedi();
  kedi.SesCikar();

  var kopek = Kopek();
  kopek.SesCikar();
}

