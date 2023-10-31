void main()
{
  print("Verileri alinmasi bekleniyor");
  var veri =  veritabanindanVeriAl();
  print("Veri aliniyor. \b $veri");
}

Future<String> veritabanindanVeriAl() async
{
  for(var i=1; i<6;i++)
  {
    Future.delayed(Duration(seconds: i), () => print("Alinan veri miktari: ${i * 20}"));
  }

  return Future.delayed(Duration(seconds: 5), () => "Veritabani veri kumesi");
}